import InitECandidate.Solver.SourceCost.LoopExtra.Data.Slice

/-!
# Geometric strides with a doomed fixed point (`merkleize_progressive`)

```
while off <+ n { var cnt = n - off; if size <+ cnt { cnt = size; }
  merkleize(p + off * 32, cnt, size, roots + k * 32); off = off + size; size = size << 2; k = k + 1 }
```

`size << 2` reaches `0` within `width / 2` iterations; from then on `off`, `size` and `n`
are fixed, the guard stays true and only an escape of the callee could end the loop.
With `size = 0` the callee gets `cnt = 0`, and `merkleize` with `n = 0` returns at once
(it never escapes), so such a run never ends well. Hence a good run makes at most
`width + 1` iterations.

* `zlen c v`: the number of shifts by `c` that turn `v` into `0`.
* `cost_while_doubling`: the semantic rule for `while off <+ n` with
  `off' = off + size`, `size' = size << c`, `n` kept, and no good non-normal exit while
  `size = 0`.
* `EfArgZero σ C f k`: calls of `f` whose argument `k` is `0` never escape. This is a fact
  about the callee's code (for the guest: `merkleize`, argument `1`); the loop rule takes it
  as a hypothesis, which the table supplies (its `efz` list, `Table.lean`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Shifts until zero -/

omit [NeZero width] in
theorem zlen_ex {c : Nat} (hc : 1 ≤ c) (v : BitVec width) :
    ∃ m, (v.toNat * 2 ^ (c * m)) % 2 ^ width = 0 := by
  refine ⟨width, ?_⟩
  have : 2 ^ (c * width) = 2 ^ ((c - 1) * width) * 2 ^ width := by
    rw [← Nat.pow_add]; congr 1
    have : c = (c - 1) + 1 := by omega
    conv_lhs => rw [this]
    rw [Nat.add_mul, Nat.one_mul]
  rw [this, ← Nat.mul_assoc, Nat.mul_mod_left]

open Classical in
/-- Number of shifts by `c` that turn `v` into `0` (`0` for `v = 0`). -/
noncomputable def zlen (c : Nat) (v : BitVec width) : Nat :=
  if h : ∃ m, (v.toNat * 2 ^ (c * m)) % 2 ^ width = 0 then Nat.find h else 0

omit [NeZero width] in
theorem zlen_le {c : Nat} (hc : 1 ≤ c) (v : BitVec width) : zlen c v ≤ width := by
  classical
  unfold zlen
  rw [dif_pos (zlen_ex hc v)]
  apply Nat.find_min'
  show (v.toNat * 2 ^ (c * width)) % 2 ^ width = 0
  have : 2 ^ (c * width) = 2 ^ ((c - 1) * width) * 2 ^ width := by
    rw [← Nat.pow_add]; congr 1
    have : c = (c - 1) + 1 := by omega
    conv_lhs => rw [this]
    rw [Nat.add_mul, Nat.one_mul]
  rw [this, ← Nat.mul_assoc, Nat.mul_mod_left]

omit [NeZero width] in
theorem zlen_eq_zero {c : Nat} (hc : 1 ≤ c) {v : BitVec width} : zlen c v = 0 ↔ v = 0 := by
  classical
  unfold zlen
  rw [dif_pos (zlen_ex hc v), Nat.find_eq_zero]
  simp only [Nat.mul_zero, Nat.pow_zero, Nat.mul_one, Nat.mod_eq_of_lt v.isLt]
  constructor
  · intro h; exact BitVec.eq_of_toNat_eq (by simpa using h)
  · rintro rfl; simp

omit [NeZero width] in
theorem zlen_shift {c : Nat} (hc : 1 ≤ c) {v : BitVec width} (hv : v ≠ 0) :
    zlen c (v <<< c) + 1 = zlen c v := by
  classical
  unfold zlen
  rw [dif_pos (zlen_ex hc _), dif_pos (zlen_ex hc v)]
  have hP : ∀ m, ((v <<< c).toNat * 2 ^ (c * m)) % 2 ^ width =
      (v.toNat * 2 ^ (c * (m + 1))) % 2 ^ width := by
    intro m
    rw [BitVec.toNat_shiftLeft, Nat.shiftLeft_eq, Nat.mod_mul_mod, Nat.mul_assoc, ← Nat.pow_add]
    congr 3
    rw [Nat.mul_add, Nat.mul_one, Nat.add_comm]
  have h0 : ¬ (v.toNat * 2 ^ (c * 0)) % 2 ^ width = 0 := by
    simp only [Nat.mul_zero, Nat.pow_zero, Nat.mul_one, Nat.mod_eq_of_lt v.isLt]
    intro h; exact hv (BitVec.eq_of_toNat_eq (by simpa using h))
  have h2 : ∃ m, (v.toNat * 2 ^ (c * (m + 1))) % 2 ^ width = 0 := by
    obtain ⟨m, hm⟩ := zlen_ex hc (v <<< c)
    exact ⟨m, (hP m) ▸ hm⟩
  rw [Nat.find_comp_succ (zlen_ex hc v) h2 h0]
  congr 1
  apply Nat.find_congr'
  intro m
  rw [hP m]

/-! ## The loop rule -/

theorem condTrue_transfer {op : Flapjack.Cmp} {x y : MlS} {s t : PanSemStateFiniteExact width σ}
    (hx : s.locals.lookup x = t.locals.lookup x) (hy : s.locals.lookup y = t.locals.lookup y)
    (h : CondTrue s (.cmp op (.var .local x) (.var .local y))) :
    CondTrue t (.cmp op (.var .local x) (.var .local y)) := by
  have hag : AgreeOn [x, y] s t := by
    intro z hz
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hz
    rcases hz with rfl | rfl
    · exact hx
    · exact hy
  have hp : pureE [x, y] (.cmp op (.var .local x) (.var .local y) : ExpHOL width) = true := by
    simp [pureE]
  unfold CondTrue evalHOLFinite at h ⊢
  rw [← evalFinite_pure hag hp]
  exact h

/-- `while off <+ n { body }` where a completed body maps `(off, size)` to
`(off + size, size << c)` and keeps `n`, and the body ends only normally while
`size = 0`: at most `width + 1` iterations. -/
theorem cost_while_doubling {off size n : MlS} {c : Nat} {body : ProgHOL width} {B : Nat}
    (hc : 1 ≤ c) (hb : Cost σ X body B) (hnc : NoCont σ body)
    (hstep : ∀ (s : PanSemStateFiniteExact width σ) (a : BitVec width),
      s.locals.lookup off = some (.val (.word a)) →
      (evaluateHOLFiniteState s body).1 = none →
      ∃ b : BitVec width, s.locals.lookup size = some (.val (.word b)) ∧
        (evaluateHOLFiniteState s body).2.locals.lookup off = some (.val (.word (a + b))) ∧
        (evaluateHOLFiniteState s body).2.locals.lookup size = some (.val (.word (b <<< c))))
    (hkn : Keeps σ n body)
    (hz : ∀ s : PanSemStateFiniteExact width σ, InCtx s X →
      s.locals.lookup size = some (.val (.word 0)) →
      Good (evaluateHOLFiniteState s body).1 → (evaluateHOLFiniteState s body).1 = none) :
    Cost σ X (.while (.cmp .lower (.var .local off) (.var .local n)) body)
      ((2 ^ width + 1) * (B + 1)) := by
  let g : ExpHOL width := .cmp .lower (.var .local off) (.var .local n)
  let Doomed : PanSemStateFiniteExact width σ → Prop := fun s =>
    InCtx s X ∧ s.locals.lookup size = some (.val (.word 0)) ∧ CondTrue s g
  have never : ∀ k (s : PanSemStateFiniteExact width σ), s.clock = k → Doomed s →
      ¬ Good (evaluateHOLFiniteState s (.while g body)).1 := by
    intro k
    induction k using Nat.strongRecOn with
    | _ k ih =>
    intro s hk hd
    obtain ⟨hsc, hsz, hct⟩ := hd
    obtain ⟨a, e, ha, -⟩ := cond_var_left hct
    obtain ⟨w, hw, hne⟩ := hct
    have hdecs : InCtx (decClockHOLFinite s) X := hsc
    rw [evaluateHOLFiniteState_eq_evaluate_def s (.while g body)]
    dsimp only
    rw [hw]
    simp only [ne_eq, hne, not_false_eq_true, if_true]
    split
    · simp [Good]
    · cases hres : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 with
      | none =>
        dsimp only
        obtain ⟨b, hb0, hoff, hsize⟩ := hstep (decClockHOLFinite s) a ha hres
        have hb0' : b = 0 := by
          have : s.locals.lookup size = some (.val (.word b)) := hb0
          rw [hsz] at this; simpa using this.symm
        subst hb0'
        have hlt : (evaluateHOLFiniteState (decClockHOLFinite s) body).2.clock < k := by
          have := evaluateHOLFiniteState_clock_le (decClockHOLFinite s) body
          simp only [decClockHOLFinite] at this ⊢
          omega
        refine ih _ hlt _ rfl ⟨inCtx_eval hdecs body, ?_, ?_⟩
        · rw [hsize]; simp
        · refine condTrue_transfer ?_ ?_ ⟨w, hw, hne⟩
          · rw [hoff]; simpa using ha
          · exact (hkn _ (Or.inl hres)).symm
      | some r =>
        have hng : ¬ Good (some r : Option (PanSemResultExact width)) := by
          intro hg
          have := hz _ hdecs hsz (by rw [hres]; exact hg)
          rw [hres] at this
          cases this
        cases r with
        | «continue» => exact absurd (by simp [Good]) hng
        | «break» => exact absurd (by simp [Good]) hng
        | _ => exact hng
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup size with
    | some (.val (.word b)) => zlen c b
    | _ => 0
  have hM : ∀ s : PanSemStateFiniteExact width σ, InCtx s X → CondTrue s g →
      Good (evaluateHOLFiniteState s (.while g body)).1 → μ s ≤ width := by
    intro s _ _ _
    simp only [μ]
    split
    · exact zlen_le hc _
    · exact Nat.zero_le _
  have hcost := cost_while_good μ width hb hM ?_
  · refine hcost.mono (Nat.mul_le_mul_right _ ?_)
    have := Nat.lt_two_pow_self (n := width)
    omega
  intro s hs hct _ hg hexit _
  have hnone : (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none := by
    rcases hexit with h | h
    · exact h
    · exact absurd h (hnc _)
  obtain ⟨a, e, ha, -⟩ := cond_var_left hct
  obtain ⟨b, hb0, _, hsize⟩ := hstep (decClockHOLFinite s) a ha hnone
  have hb0' : s.locals.lookup size = some (.val (.word b)) := hb0
  by_cases hbz : b = 0
  · subst hbz
    exact absurd hg (never _ s rfl ⟨hs, hb0', hct⟩)
  · simp only [μ, hb0', hsize]
    have := zlen_shift hc hbz
    omega

/-! ## Callee fact: no escape when an argument is zero -/

/-- Calls of `f` whose argument number `k` is the word `0` never escape: `f`'s body never
ends with an exception or a final FFI event from an entry state built from such
arguments. -/
def EfArgZero (σ : Type) (C : CodeMap width) (f : MlS) (k : Nat) : Prop :=
  ∀ values body callee rs, lookupCodeHOLFinite C.lookup f values = some (body, callee, rs) →
    values[k]? = some (.val (.word 0)) →
    ∀ s : PanSemStateFiniteExact width σ, s.code = C → s.locals = callee →
      NoEsc (evaluateHOLFiniteState s body).1

theorem evalList_get1 {s : PanSemStateFiniteExact width σ} {a b : ExpHOL width}
    {rest : List (ExpHOL width)} {vs : List (ValueHOL width)}
    (h : @evalListHOLExact width σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x))
      (a :: b :: rest) = some vs) :
    vs[1]? = @evalHOLExact width σ _ s.toExact (fun x => Classical.propDecidable (s.memaddrs x)) b := by
  simp only [evalListHOLExact] at h
  split at h
  · rename_i va vs' ha hvs'
    split at hvs'
    · rename_i vb vs'' hb _
      simp only [Option.some.injEq] at h hvs'
      subst h hvs'
      simp [hb]
    · cases hvs'
  · cases h

/-- A call of `f` with argument `1` a local holding `0` ends only normally (when good). -/
theorem call_argzero_none {f x : MlS} (hf : EfArgZero σ X.code f 1) {a0 : ExpHOL width}
    {rest : List (ExpHOL width)} {s : PanSemStateFiniteExact width σ} (hs : s.code = X.code)
    (hx : s.locals.lookup x = some (.val (.word 0)))
    (hg : Good (evaluateHOLFiniteState s (.call (some (none, none)) f
      (a0 :: .var .local x :: rest))).1) :
    (evaluateHOLFiniteState s (.call (some (none, none)) f (a0 :: .var .local x :: rest))).1 =
      none := by
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.call _ f _)]
  dsimp only
  split
  · simp [Good]
  · rename_i values hvals
    have h1 : values[1]? = some (.val (.word 0)) := by
      rw [evalList_get1 hvals]; simpa [evalHOLExact] using hx
    rw [hs]
    split
    · simp [Good]
    · rename_i body callee rs hlook
      split
      · simp [Good]
      · have hne := hf values body callee rs hlook h1 (callEntryStateHOLFinite s callee)
          (by simpa [callEntryStateHOLFinite] using hs) (by simp [callEntryStateHOLFinite])
        generalize evaluateHOLFiniteState (callEntryStateHOLFinite s callee) body = E at hne ⊢
        obtain ⟨r, st⟩ := E
        simp only at hne
        rcases r with _ | (_ | _ | _ | _ | v | ⟨e, v⟩ | ev) <;> dsimp only
        all_goals (repeat' split)
        all_goals simp_all [Good, NoEsc]

/-! ## Body facts for the `merkleize_progressive` shape -/

/-- Good results of `p` from states with code `C` are normal completion. -/
def OnlyNormal (σ : Type) (C : CodeMap width) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, s.code = C → Good (evaluateHOLFiniteState s p).1 →
    (evaluateHOLFiniteState s p).1 = none

theorem onlyNormal_of_B {C : CodeMap width} {p : ProgHOL width}
    (h1 : onlyExitsCB (fun _ => false) false p = true) (h2 : noContB p = true) :
    OnlyNormal σ C p := by
  intro s hs hg
  have hef : EfSound σ C (fun _ => false) := by intro f hf; cases hf
  rcases onlyExitsCB_sound hef false p h1 s hs hg with h | h | ⟨h, _⟩
  · exact h
  · exact absurd h (noContB_sound p h2 s)
  · cases h

theorem eval_add_vars {s : PanSemStateFiniteExact width σ} {x y : MlS} {v : ValueHOL width}
    (h : @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a))
      (.op .add [.var .local x, .var .local y]) = some v) :
    ∃ a b, s.locals.lookup x = some (.val (.word a)) ∧ s.locals.lookup y = some (.val (.word b)) ∧
      v = .val (.word (a + b)) := by
  simp only [evalHOLExact, evalListHOLExact] at h
  cases hx : s.locals.lookup x with
  | none => simp [hx] at h
  | some vx =>
    cases hy : s.locals.lookup y with
    | none => simp [hx, hy] at h
    | some vy =>
      rcases vx with ⟨⟨a⟩⟩ | _ | _ <;> rcases vy with ⟨⟨b⟩⟩ | _ | _ <;>
        simp [hx, hy, valueIsWord, valueWord, wordOpHOL, wordOp] at h
      exact ⟨a, b, rfl, rfl, by rw [← h]⟩

theorem eval_lsl_var {s : PanSemStateFiniteExact width σ} {y : MlS} {k : BitVec width}
    {v : ValueHOL width}
    (h : @evalHOLExact width σ _ s.toExact (fun a => Classical.propDecidable (s.memaddrs a))
      (.shift .lsl (.var .local y) (.const k)) = some v) :
    ∃ b, s.locals.lookup y = some (.val (.word b)) ∧ v = .val (.word (b <<< k.toNat)) := by
  simp only [evalHOLExact] at h
  split at h
  · rename_i l r hl hr
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hr
    subst hr
    unfold wordShiftHOL at h
    split at h
    · cases h
    · simp only [Option.map_some, Option.some.injEq] at h
      exact ⟨l, hl, h.symm⟩
  · cases h

/-- `lower size cnt` true or false from `size = 0`, then `cnt = size` or not: `cnt = 0`. -/
theorem clamp_zero {s : PanSemStateFiniteExact width σ} {size cnt : MlS}
    (hsz : s.locals.lookup size = some (.val (.word 0)))
    (h : (evaluateHOLFiniteState s (.ite (.cmp .lower (.var .local size) (.var .local cnt))
      (.assign .local cnt (.var .local size)) .skip)).1 = none) :
    (evaluateHOLFiniteState s (.ite (.cmp .lower (.var .local size) (.var .local cnt))
      (.assign .local cnt (.var .local size)) .skip)).2.locals.lookup cnt =
        some (.val (.word 0)) := by
  obtain ⟨w, hw, e⟩ := ite_none h
  rw [e]
  rw [e] at h
  simp only [evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    rw [hsz] at hl
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hl hw
    subst hl
    split
    · rename_i hz
      rw [evaluateHOLFiniteState_eq_evaluate_def]
      rw [← hw] at hz
      have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
      cases hc : wordCmpHOL .lower (0 : BitVec width) r
      · simp only [wordCmpHOL, decide_eq_false_iff_not, BitVec.lt_def] at hc
        have hr0 : r = 0 := BitVec.eq_of_toNat_eq (by simp at hc ⊢; omega)
        subst hr0
        exact hr
      · rw [hc] at hz
        have := congrArg BitVec.toNat hz
        simp [Nat.mod_eq_of_lt hpow] at this
    · rw [if_neg (by assumption)] at h
      obtain ⟨v, hv, e2⟩ := assign_none h
      rw [e2]
      simp only [evalHOLExact] at hv
      rw [hsz] at hv
      simp only [Option.some.injEq] at hv
      subst hv
      simp [lookup_setVar_eq]
  · cases hw

theorem seq_good {s : PanSemStateFiniteExact width σ} {a b : ProgHOL width}
    (ha : Good (evaluateHOLFiniteState s a).1 → (evaluateHOLFiniteState s a).1 = none)
    (hg : Good (evaluateHOLFiniteState s (.seq a b)).1) :
    (evaluateHOLFiniteState s a).1 = none ∧
      evaluateHOLFiniteState s (.seq a b) = evaluateHOLFiniteState (evaluateHOLFiniteState s a).2 b := by
  revert hg
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none => intro _; exact ⟨rfl, rfl⟩
  | some r =>
      intro hg
      dsimp only at hg
      have := ha hg
      rw [h1] at this; cases this

/-! ## Recognizer -/

/-- `while off <+ n { var cnt = e; if size <+ cnt { cnt = size; } f(a0, cnt, ...);
off = off + size; size = size << k; rest }` with `k ≠ 0`, where calls of `f` with argument
`1` zero never escape (`efz f`) and `rest` makes no calls. -/
def loopOkGeo (efz : MlS → Bool) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match c, b with
  | .cmp .lower (.var .local off) (.var .local n),
    .dec cnt _ _
      (.seq (.ite (.cmp .lower (.var .local size) (.var .local cnt1))
          (.assign .local cnt2 (.var .local size1)) .skip)
        (.seq (.call (some (none, none)) f (_ :: .var .local cnt3 :: _))
          (.seq (.assign .local off1 (.op .add [.var .local off2, .var .local size2]))
            (.seq (.assign .local size3 (.shift .lsl (.var .local size4) (.const k))) rest)))) =>
      efz f && decide (cnt1 = cnt) && decide (cnt2 = cnt) && decide (cnt3 = cnt) &&
        decide (size1 = size) && decide (size2 = size) && decide (size3 = size) &&
        decide (size4 = size) && decide (off1 = off) && decide (off2 = off) &&
        decide (cnt ≠ off) && decide (cnt ≠ size) && decide (off ≠ size) && decide (k ≠ 0) &&
        keepsB off rest && keepsB size rest && keepsB n b && noContB b &&
        onlyExitsCB (fun _ => false) false rest && noContB rest
  | _, _ => false

theorem loopOkGeo_sound {efz : MlS → Bool} (hefz : ∀ f, efz f = true → EfArgZero σ X.code f 1)
    {c : ExpHOL width} {b : ProgHOL width} {B : Nat} (h : loopOkGeo efz c b = true)
    (hb : Cost σ X b B) : Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkGeo at h
  split at h
  · rename_i off n cnt sh e size cnt1 cnt2 size1 f a0 cnt3 args off1 off2 size2 size3 size4 k rest
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨hf, e1⟩, e2⟩, e3⟩, e4⟩, e5⟩, e6⟩, e7⟩, e8⟩, e9⟩, hco⟩,
      hcs⟩, hos⟩, hk⟩, hro⟩, hrs⟩, hkn⟩, hncb⟩, hrx⟩, hrc⟩ := h
    subst cnt1 cnt2 cnt3 size1 size2 size3 size4 off1 off2
    have hf' := hefz f hf
    have hk1 : 1 ≤ k.toNat := by
      rcases Nat.eq_zero_or_pos k.toNat with h0 | h0
      · exact absurd (BitVec.eq_of_toNat_eq (by simpa using h0)) hk
      · exact h0
    -- the pieces
    let ITE : ProgHOL width := .ite (.cmp .lower (.var .local size) (.var .local cnt))
      (.assign .local cnt (.var .local size)) .skip
    let CALL : ProgHOL width := .call (some (none, none)) f (a0 :: .var .local cnt :: args)
    let AOFF : ProgHOL width := .assign .local off (.op .add [.var .local off, .var .local size])
    let ASZ : ProgHOL width := .assign .local size (.shift .lsl (.var .local size) (.const k))
    have hITEo : keepsB off ITE = true := by simp [ITE, keepsB, hco]
    have hITEs : keepsB size ITE = true := by simp [ITE, keepsB, hcs]
    refine cost_while_doubling (off := off) (size := size) (n := n) (c := k.toNat) hk1 hb
      (noContB_sound _ hncb) ?_ (keepsB_sound n _ hkn) ?_
    · -- the step
      intro s a ha hnone
      obtain ⟨v, -, hn1, e1⟩ := dec_none hnone
      rw [e1]
      simp only [lookup_resVarEq_restore, if_neg (Ne.symm hco), if_neg (Ne.symm hcs)]
      let s1 := setVarHOLFinite cnt v s
      have h1o : s1.locals.lookup off = some (.val (.word a)) := by
        simp only [s1, lookup_setVar_eq, if_neg (Ne.symm hco)]; exact ha
      have h1s : s1.locals.lookup size = s.locals.lookup size := by
        simp only [s1, lookup_setVar_eq, if_neg (Ne.symm hcs)]
      obtain ⟨n2, e2⟩ := seq_none hn1
      rw [e2] at hn1 ⊢
      let s2 := (evaluateHOLFiniteState s1 ITE).2
      have h2o : s2.locals.lookup off = some (.val (.word a)) :=
        (keepsB_sound off ITE hITEo s1 (Or.inl n2)).trans h1o
      have h2s : s2.locals.lookup size = s.locals.lookup size :=
        (keepsB_sound size ITE hITEs s1 (Or.inl n2)).trans h1s
      obtain ⟨n3, e3⟩ := seq_none hn1
      rw [e3] at hn1 ⊢
      let s3 := (evaluateHOLFiniteState s2 CALL).2
      have h3o : s3.locals.lookup off = some (.val (.word a)) :=
        (keepsB_sound off CALL (by simp [CALL, keepsB]) s2 (Or.inl n3)).trans h2o
      have h3s : s3.locals.lookup size = s.locals.lookup size :=
        (keepsB_sound size CALL (by simp [CALL, keepsB]) s2 (Or.inl n3)).trans h2s
      obtain ⟨n4, e4⟩ := seq_none hn1
      rw [e4] at hn1 ⊢
      obtain ⟨v4, hv4, e4'⟩ := assign_none n4
      obtain ⟨a', bb, ha', hb', hv4'⟩ := eval_add_vars hv4
      have haa : a' = a := by
        have : s3.locals.lookup off = some (.val (.word a')) := ha'
        rw [h3o] at this; simpa using this.symm
      subst haa hv4'
      rw [e4'] at hn1 ⊢
      let s4 := setVarHOLFinite off (.val (.word (a' + bb))) s3
      obtain ⟨n5, e5⟩ := seq_none hn1
      rw [e5] at hn1 ⊢
      obtain ⟨v5, hv5, e5'⟩ := assign_none n5
      obtain ⟨b5, hb5, hv5'⟩ := eval_lsl_var hv5
      have hbb : b5 = bb := by
        have : s4.locals.lookup size = some (.val (.word b5)) := hb5
        simp only [s4, lookup_setVar_eq, if_neg (Ne.symm hos)] at this
        rw [hb'] at this; simpa using this.symm
      subst hbb hv5'
      rw [e5'] at hn1 ⊢
      refine ⟨b5, ?_, ?_, ?_⟩
      · rw [← h3s]; exact hb'
      · rw [keepsB_sound off rest hro _ (Or.inl hn1)]
        simp [lookup_setVar_eq, hos]
      · rw [keepsB_sound size rest hrs _ (Or.inl hn1)]
        simp [lookup_setVar_eq]
    · -- no good escape while `size = 0`
      intro s hs hsz hg
      have hcode : s.code = X.code := hs.1
      revert hg
      rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec cnt sh e _)]
      dsimp only
      split
      · simp [Good]
      · rename_i v hv
        split
        · intro hg
          dsimp only at hg ⊢
          let s1 := setVarHOLFinite cnt v s
          have h1s : s1.locals.lookup size = some (.val (.word 0)) := by
            simp only [s1, lookup_setVar_eq, if_neg (Ne.symm hcs)]; exact hsz
          have h1c : s1.code = X.code := hcode
          have hITE : Good (evaluateHOLFiniteState s1 ITE).1 →
              (evaluateHOLFiniteState s1 ITE).1 = none :=
            onlyNormal_of_B (C := X.code) (by simp [ITE, onlyExitsCB]) (by simp [ITE, noContB])
              s1 h1c
          obtain ⟨n2, e2⟩ := seq_good hITE hg
          rw [e2] at hg ⊢
          let s2 := (evaluateHOLFiniteState s1 ITE).2
          have h2c : s2.locals.lookup cnt = some (.val (.word 0)) := clamp_zero h1s n2
          have h2code : s2.code = X.code := (code_preserved s1 ITE).trans h1c
          have hCALL : Good (evaluateHOLFiniteState s2 CALL).1 →
              (evaluateHOLFiniteState s2 CALL).1 = none :=
            call_argzero_none hf' h2code h2c
          obtain ⟨n3, e3⟩ := seq_good hCALL hg
          rw [e3] at hg ⊢
          have h3code : (evaluateHOLFiniteState s2 CALL).2.code = X.code :=
            (code_preserved s2 CALL).trans h2code
          exact onlyNormal_of_B (C := X.code)
            (by simp [onlyExitsCB, hrx]) (by simp [noContB, hrc]) _ h3code hg
        · simp [Good]
  · cases h

end InitECandidate.Solver.SourceCost
