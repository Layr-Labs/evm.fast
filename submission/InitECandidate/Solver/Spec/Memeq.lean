import InitECandidate.Solver.Spec.CodeMemeq
import InitECandidate.Solver.Spec.RlpHdr

/-!
# A return specification of `memeq`

`funRet_memeq`: `memeq(a, b, n)` returns, if at all,

* `1` when `n = 0` (every loop condition fails from `i = 0`, no fast path applies);
* only after reading `b` when `n ≠ 0`: `Hit X.memaddrs b` (each fast path and each loop
  body starts by loading at `b` or `b + i`; with `i = 0` that is `b`, and once a load ran
  the fact is kept; if no loop body ran, the last loop `while i < n` exits only with
  `n ≤ i = 0`).

Invariant `MJ`: `b`, `n` keep their values, `i = 0 ∨ Hit b`, and `n = 0 → i = 0`. The code
after each first comparison keeps `b` and `n` (`keepsB`, checked by `decide` in
`memeq_shape`).
-/

namespace InitECandidate.Solver.Spec
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)
open InitECandidate.Solver.SourceCost

variable {σ : Type} {X : Ctx 64}

theorem lookupCode_three {code : MlS → Option (List (MlS × ShapeHOL) × ProgHOL 64 × ShapeHOL)}
    {f pa pb pc : MlS} {sa sb sc : ShapeHOL} {bd : ProgHOL 64} {rsh : ShapeHOL}
    (hc : code f = some ([(pa, sa), (pb, sb), (pc, sc)], bd, rsh)) (hab : pa ≠ pb) (hac : pa ≠ pc)
    (hbc : pb ≠ pc)
    {vs : List (ValueHOL 64)} {body : ProgHOL 64} {callee : HolFiniteMapExact MlS (ValueHOL 64)}
    {rs : ShapeHOL} (h : PanSemStateFiniteExact.lookupCodeHOLFinite code f vs = some (body, callee, rs)) :
    body = bd ∧ rs = rsh ∧ ∃ A B C, vs = [A, B, C] ∧ shapeEqHOL sa (shapeOfHOLExact A) = true ∧
      shapeEqHOL sb (shapeOfHOLExact B) = true ∧ shapeEqHOL sc (shapeOfHOLExact C) = true ∧
      callee.lookup pa = some A ∧ callee.lookup pb = some B ∧ callee.lookup pc = some C := by
  unfold PanSemStateFiniteExact.lookupCodeHOLFinite at h
  split at h
  · simp at h
  · rename_i body' cl rs' hx
    simp only [Option.some.injEq, Prod.mk.injEq] at h
    obtain ⟨rfl, rfl, rfl⟩ := h
    unfold lookupCodeHOLExact at hx
    rw [hc] at hx
    dsimp only at hx
    split at hx
    · rename_i hcond
      simp only [Option.some.injEq, Prod.mk.injEq] at hx
      obtain ⟨rfl, rfl, rfl⟩ := hx
      obtain ⟨-, hlen, hall⟩ := hcond
      match vs, hlen, hall with
      | [A, B, C], _, hall =>
          simp only [List.zip_cons_cons, List.zip_nil_right, List.all_cons, List.all_nil,
            Bool.and_true, Bool.and_eq_true] at hall
          refine ⟨rfl, rfl, A, B, C, rfl, hall.1, hall.2.1, hall.2.2, ?_, ?_, ?_⟩
          · simp [hab, hac]
          · simp [hbc]
          · simp
    · simp at hx

/-! ## Invariant and post -/

def MJ (D : BitVec 64 → Prop) (B N : BitVec 64) (s : PanSemStateFiniteExact 64 σ) : Prop :=
  s.locals.lookup (nm "b") = some (.val (.word B)) ∧
  s.locals.lookup (nm "n") = some (.val (.word N)) ∧
  (s.locals.lookup (nm "i") = some (.val (.word 0)) ∨ Hit D B) ∧
  (N = 0 → s.locals.lookup (nm "i") = some (.val (.word 0)))

def Mphi (D : BitVec 64 → Prop) (B N : BitVec 64) (v : ValueHOL 64) : Prop :=
  (N = 0 → v = .val (.word 1)) ∧ (N ≠ 0 → Hit D B)

/-- `memeq(a, b, n)` returns `1` when `n = 0`, and only after a domain hit at `b` when
`n ≠ 0`. -/
def MemeqRet (D : BitVec 64 → Prop) (vs : List (ValueHOL 64)) (v : ValueHOL 64) : Prop :=
  ∃ A B N : BitVec 64, vs = [.val (.word A), .val (.word B), .val (.word N)] ∧ Mphi D B N v

/-! ## Reading `b` -/

theorem hit_of_add {D : BitVec 64 → Prop} {B : BitVec 64} {s : PanSemStateFiniteExact 64 σ}
    {w : BitVec 64} (hw : ev s (addI (nm "b")) = some (.val (.word w)))
    (hb : s.locals.lookup (nm "b") = some (.val (.word B)))
    (hi : s.locals.lookup (nm "i") = some (.val (.word 0)) ∨ Hit D B) (hh : Hit D w) : Hit D B := by
  rcases hi with hi | hi
  · rw [show addI (nm "b") = .op .add [lv (nm "b"), lv (nm "i")] from rfl,
      ev_add2 (ev_lw hb) (ev_lw hi)] at hw
    cases hw
    simpa using hh
  · exact hi

theorem hY_ldw_b {B N : BitVec 64} :
    ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s → ∀ v,
      ev s (ldw (lv (nm "b"))) = some v → Hit X.memaddrs B := by
  intro s hs hJ v hv
  obtain ⟨w, hw, hd, -⟩ := ev_load_one hv
  rw [ev_lw hJ.1] at hw
  cases hw
  rw [← hs.2.1]
  exact Or.inl hd

theorem hY_ldw_bi {B N : BitVec 64} :
    ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s → ∀ v,
      ev s (ldw (addI (nm "b"))) = some v → Hit X.memaddrs B := by
  intro s hs hJ v hv
  obtain ⟨w, hw, hd, -⟩ := ev_load_one hv
  exact hit_of_add hw hJ.1 hJ.2.2.1 (by rw [← hs.2.1]; exact Or.inl hd)

theorem hY_ldb_bi {B N : BitVec 64} :
    ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s → ∀ v,
      ev s (.loadByte (addI (nm "b"))) = some v → Hit X.memaddrs B := by
  intro s hs hJ v hv
  obtain ⟨w, hw, hh⟩ := ev_loadByte_hit hv
  exact hit_of_add hw hJ.1 hJ.2.2.1 (by rw [← hs.2.1]; exact hh)

/-! ## Blocks and loops -/

theorem memeq_first {B N : BitVec 64} {xe y : ExpHOL 64}
    (hY : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s → ∀ v,
      ev s y = some v → Hit X.memaddrs B) :
    Hoare σ X (MJ X.memaddrs B N) (neRet xe y)
      (fun r t => (r = none ∧ MJ X.memaddrs B N t ∧ Hit X.memaddrs B) ∨
        (∃ v, r = some (.returned v)) ∧ Hit X.memaddrs B) := by
  unfold neRet
  refine hoare_ite ?_ ?_
  · refine hoare_return fun s hs ⟨hJ, w, hw, _⟩ v _ => Or.inr ⟨⟨v, rfl⟩, ?_⟩
    obtain ⟨x, y', _, hy, _⟩ := ev_cmp_inv hw
    exact hY s hs hJ _ hy
  · refine hoare_skip fun s hs ⟨hJ, hc⟩ => Or.inl ⟨rfl, hJ, ?_⟩
    obtain ⟨x, y', _, hy, _⟩ := ev_cmp_inv hc
    exact hY s hs hJ _ hy

/-- A fast path or loop body: the first comparison reads `b`; the rest keeps `b`, `n`. -/
theorem memeq_blk {B N : BitVec 64} {xe y : ExpHOL 64} {rest : ProgHOL 64}
    (hk : keepsBN rest = true)
    (hY : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s → ∀ v,
      ev s y = some v → Hit X.memaddrs B) (hN : N ≠ 0) :
    Hoare σ X (MJ X.memaddrs B N) (.seq (neRet xe y) rest)
      (fun r t => (LoopExit r → MJ X.memaddrs B N t) ∧ RetP (Mphi X.memaddrs B N) r t ∧
        Hit X.memaddrs B) := by
  simp only [keepsBN, Bool.and_eq_true] at hk
  refine hoare_seq (memeq_first hY) ?_ ?_
  · intro r t _ hr _ h
    rcases h with h | ⟨⟨v, rfl⟩, hh⟩
    · exact absurd h.1 hr
    · refine ⟨fun he => ?_, fun w hw => ⟨fun h0 => absurd h0 hN, fun _ => hh⟩, hh⟩
      rcases he with he | he | he <;> cases he
  · intro s _ hpre ht
    have hpre' : MJ X.memaddrs B N s ∧ Hit X.memaddrs B := by
      rcases hpre with h | ⟨⟨v, hv⟩, _⟩
      · exact ⟨h.2.1, h.2.2⟩
      · cases hv
    obtain ⟨⟨hb, hn, _, _⟩, hh⟩ := hpre'
    refine ⟨fun he => ⟨?_, ?_, Or.inr hh, fun h0 => absurd h0 hN⟩,
      fun w _ => ⟨fun h0 => absurd h0 hN, fun _ => hh⟩, hh⟩
    · rw [keepsB_sound (σ := σ) _ rest hk.1 s he]; exact hb
    · rw [keepsB_sound (σ := σ) _ rest hk.2 s he]; exact hn

theorem memeq_loop {B N : BitVec 64} {c xe y : ExpHOL 64} {rest : ProgHOL 64}
    (hk : keepsBN rest = true)
    (hY : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s → ∀ v,
      ev s y = some v → Hit X.memaddrs B)
    (hcN : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s → CondTrue s c →
      N ≠ 0)
    (E : PanSemStateFiniteExact 64 σ → Prop) (hEH : ∀ t, Hit X.memaddrs B → E t)
    (hE : ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X → MJ X.memaddrs B N s →
      ev s c = some (.val (.word 0)) → E s) :
    Hoare σ X (MJ X.memaddrs B N) (.while c (.seq (neRet xe y) rest))
      (fun r t => (r = none → MJ X.memaddrs B N t ∧ E t) ∧ RetP (Mphi X.memaddrs B N) r t) := by
  refine hoare_while (fun s h => h) ?_ (fun s hs hJ hc => ⟨fun _ => ⟨hJ, hE s hs hJ hc⟩, retP_none s⟩)
  by_cases hN : N = 0
  · intro s hs ⟨hJ, hc⟩
    exact absurd hN (hcN s hs hJ hc)
  · refine hoare_conseq (memeq_blk hk hY hN) (fun s _ h => h.1) ?_
    intro r t _ _ ⟨hJ, hR, hh⟩
    refine ⟨fun h => hJ (Or.inl h), fun h => hJ (Or.inr (Or.inl h)),
      fun h => ⟨fun _ => ⟨hJ (Or.inr (Or.inr h)), hEH t hh⟩, retP_none t⟩, fun v hv => ?_⟩
    subst hv
    exact ⟨nofun, hR⟩

/-- A fast path guarded by `n == K` (`K ≠ 0`). -/
theorem memeq_fast {B N : BitVec 64} {K : Nat} (hK : BitVec.ofNat 64 K ≠ 0) {rest : ProgHOL 64}
    (hk : keepsBN rest = true) :
    Hoare σ X (MJ X.memaddrs B N)
      (.ite (.cmp .equal (lv (nm "n")) (cw K))
        (.seq (neRet (ldw (lv (nm "a"))) (ldw (lv (nm "b")))) rest) .skip)
      (fun r t => (r = none → MJ X.memaddrs B N t) ∧ RetP (Mphi X.memaddrs B N) r t) := by
  refine hoare_ite ?_ (hoare_skip fun s _ h => ⟨fun _ => h.1, retP_none s⟩)
  by_cases hN : N = 0
  · intro s _ ⟨hJ, w, hw, hw0⟩
    obtain ⟨x, y, hx, hy, hxy⟩ := cmp_true hw hw0
    rw [ev_lw hJ.2.1] at hx
    cases hx
    rw [ev_cw] at hy
    cases hy
    have := equal_true' hxy
    exact absurd (hN ▸ this).symm hK
  · refine hoare_conseq (memeq_blk hk hY_ldw_b hN) (fun s _ h => h.1) ?_
    intro r t _ _ ⟨hJ, hR, _⟩
    exact ⟨fun h => hJ (Or.inl h), hR⟩
where
  equal_true' {x y : BitVec 64} (h : wordCmpHOL .equal x y = true) : x = y := by
    simpa [wordCmpHOL] using h

theorem cond_geI_zero {s : PanSemStateFiniteExact 64 σ} {B N : BitVec 64}
    (hJ : MJ X.memaddrs B N s) (k : Nat) (hk0 : 0 < k) (hk : k < 2 ^ 64) (hN : N = 0) :
    ¬ CondTrue s (geI k) := by
  rintro ⟨w, hw, hw0⟩
  have hi := hJ.2.2.2 hN
  subst hN
  have h1 : ev s (geI k) = some (.val (.word (if wordCmpHOL .notLower 0 (0 + BitVec.ofNat 64 k)
      then 1 else 0))) :=
    ev_cmp (ev_lw hJ.2.1) (ev_add2 (ev_lw hi) (ev_cw _ k))
  have hkk : (0 + BitVec.ofNat 64 k).toNat = k := by
    simp [Nat.mod_eq_of_lt hk]
  have h2 : wordCmpHOL .notLower (0 : BitVec 64) (0 + BitVec.ofNat 64 k) = false := by
    simp only [wordCmpHOL, BitVec.lt_def, hkk]
    simp [hk0]
  have : ev s (geI k) = some (.val (.word w)) := hw
  rw [h1, h2] at this
  simp only [Bool.false_eq_true, if_false, Option.some.injEq, ValueHOL.val.injEq,
    HolWordLab.word.injEq] at this
  exact hw0 this.symm

/-- **`memeq` return specification.** -/
theorem funRet_memeq (hC : X.code.lookup = guestCode) :
    FunRet σ X (nm "memeq") (MemeqRet X.memaddrs) := by
  intro vs body callee rs hl
  rw [hC] at hl
  obtain ⟨rfl, -, A', B', N', rfl, hA, hB, hN, hla, hlb, hln⟩ :=
    lookupCode_three code_memeq (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hA
  obtain ⟨B, rfl⟩ := val_of_shapeEq_one hB
  obtain ⟨N, rfl⟩ := val_of_shapeEq_one hN
  obtain ⟨R20, R32, R52, RW32, RW8, RU8, RU1, hkeep, hshape⟩ := memeq_shape
  simp only [Bool.and_eq_true] at hkeep
  obtain ⟨⟨⟨⟨⟨⟨k20, k32⟩, k52⟩, kw32⟩, kw8⟩, ku8⟩, ku1⟩ := hkeep
  rw [hshape]
  refine hoare_conseq (P := fun s => s.locals = callee) (Q := RetP (Mphi X.memaddrs B N)) ?_
    (fun _ _ h => h) (fun r t _ _ h v hv => ⟨A, B, N, rfl, h v hv⟩)
  refine hoare_dec fun s _ hs v hv _ => ?_
  rw [ev_cw] at hv
  cases hv
  refine hoare_post (Q := RetP (Mphi X.memaddrs B N)) ?_ (fun r t _ _ h => h)
  refine hoare_pre (P := MJ X.memaddrs B N) ?_ ?_
  rotate_left
  · intro t _ ht
    subst ht
    refine ⟨?_, ?_, Or.inl (lk_set_self _ _ _), fun _ => lk_set_self _ _ _⟩
    · rw [lk_set_ne _ _ (by decide), hs]; exact hlb
    · rw [lk_set_ne _ _ (by decide), hs]; exact hln
  have hgeN : ∀ k, 0 < k → k < 2 ^ 64 → ∀ s : PanSemStateFiniteExact 64 σ, InCtx s X →
      MJ X.memaddrs B N s → CondTrue s (geI k) → N ≠ 0 :=
    fun k h0 hk s _ hJ hc hN => cond_geI_zero hJ k h0 hk hN hc
  refine hoare_seq (R := fun r t => (r = none → MJ X.memaddrs B N t) ∧
      RetP (Mphi X.memaddrs B N) r t) ?_ (fun _ _ _ _ _ h => h.2) ?_
  · -- the aligned fast paths and word loops
    refine hoare_ite ?_ (hoare_skip fun s _ h => ⟨fun _ => h.1, retP_none s⟩)
    refine hoare_pre (P := MJ X.memaddrs B N) ?_ (fun s _ h => h.1)
    refine hoare_seq (memeq_fast (by decide) k20) (fun _ _ _ _ _ h => h) ?_
    refine hoare_pre (P := MJ X.memaddrs B N) ?_ (fun s _ h => h.1 rfl)
    refine hoare_seq (memeq_fast (by decide) k32) (fun _ _ _ _ _ h => h) ?_
    refine hoare_pre (P := MJ X.memaddrs B N) ?_ (fun s _ h => h.1 rfl)
    refine hoare_seq (memeq_fast (by decide) k52) (fun _ _ _ _ _ h => h) ?_
    refine hoare_pre (P := MJ X.memaddrs B N) ?_ (fun s _ h => h.1 rfl)
    refine hoare_seq (memeq_loop (E := fun _ => True) kw32 hY_ldw_bi
      (hgeN 32 (by decide) (by decide)) (fun _ _ => trivial) (fun _ _ _ _ => trivial))
      (fun _ _ _ _ _ h => ⟨fun h' => (h.1 h').1, h.2⟩) ?_
    refine hoare_pre (P := MJ X.memaddrs B N) ?_ (fun s _ h => (h.1 rfl).1)
    exact hoare_post (memeq_loop (E := fun _ => True) kw8 hY_ldw_bi
      (hgeN 8 (by decide) (by decide)) (fun _ _ => trivial) (fun _ _ _ _ => trivial))
      (fun _ _ _ _ h => ⟨fun h' => (h.1 h').1, h.2⟩)
  · -- the byte loops and the final `return 1`
    refine hoare_pre (P := MJ X.memaddrs B N) ?_ (fun s _ h => h.1 rfl)
    refine hoare_seq (memeq_loop (E := fun _ => True) ku8 hY_ldb_bi
      (hgeN 8 (by decide) (by decide)) (fun _ _ => trivial) (fun _ _ _ _ => trivial))
      (fun _ _ _ _ _ h => h.2) ?_
    refine hoare_pre (P := MJ X.memaddrs B N) ?_ (fun s _ h => (h.1 rfl).1)
    refine hoare_seq (memeq_loop (E := fun _ => N ≠ 0 → Hit X.memaddrs B) ku1 hY_ldb_bi ?_
      (fun _ h _ => h) ?_) (fun _ _ _ _ _ h => h.2) ?_
    · -- `i < n` is false from `i = n = 0`
      intro s _ hJ ⟨w, hw, hw0⟩ hN
      have hi := hJ.2.2.2 hN
      subst hN
      have : ev s (.cmp .lower (lv (nm "i")) (lv (nm "n"))) =
          some (.val (.word (if wordCmpHOL .lower 0 0 then 1 else 0))) :=
        ev_cmp (ev_lw hi) (ev_lw hJ.2.1)
      have hw' : ev s (.cmp .lower (lv (nm "i")) (lv (nm "n"))) = some (.val (.word w)) := hw
      rw [this] at hw'
      simp [wordCmpHOL] at hw'
      exact hw0 hw'.symm
    · -- the exit: `n ≤ i`; if `i = 0` then `n = 0`
      intro s _ hJ hc hN
      rcases hJ.2.2.1 with hi | hh
      · obtain ⟨x, y, hx, hy, hxy⟩ := cmp_false hc
        rw [ev_lw hi] at hx
        cases hx
        rw [ev_lw hJ.2.1] at hy
        cases hy
        have := lower_false hxy
        exact absurd (BitVec.eq_of_toNat_eq (by simp at this ⊢; omega)) hN
      · exact hh
    · refine hoare_return fun s _ ⟨hJE, _⟩ v hv => ?_
      rw [ev_cw] at hv
      cases hv
      exact retP_returned _ ⟨fun _ => rfl, (hJE rfl).2⟩

end InitECandidate.Solver.Spec
