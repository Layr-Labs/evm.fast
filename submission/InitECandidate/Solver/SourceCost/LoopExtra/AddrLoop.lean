import InitECandidate.Solver.SourceCost.OrbitShapes

/-!
# Loops that walk through a bounded memory domain

A load from ordinary memory succeeds only at an address in `memaddrs`, a shared-memory
access only at an address in `shMemaddrs` (otherwise the result is `error`, which a covered
run excludes). In the challenge run both domains are fixed (`Ctx`) and lie in bounded
intervals (`DomBounded`). So a loop whose body accesses memory at `base + i` on every
completed iteration, where `base` is kept and `i` grows by `d ∈ [1, K]`, makes at most
(interval length + alignment slack) + 1 iterations: the access offsets from the interval
start increase strictly and never wrap.

* `cost_while_addr`: the semantic rule, for any address function.
* `rangeInvB` / `stepsRB`: the step `i = i + k` (constant) or `i = i + a`, where a range
  analysis (`guardFacts`, `rangeExp`) shows `a ∈ [1, K]` at that point (`compute_jumpdests`:
  `pc = pc + adv` with `adv` set to `1`, `2`, or `op - 96 + 2` under `96 ≤ op ≤ 127`).
* `accessB`: the body starts with the access, `!ldw w, base + i` (`input_blob`) or
  `var x = ld8 (base + i)` (`compute_jumpdests`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Bounded domains -/

/-- Every address of `D` lies in the cyclic interval `[lo, lo + L)`. -/
def DomIn (D : BitVec width → Prop) (lo : BitVec width) (L : Nat) : Prop :=
  ∀ a, D a → (a - lo).toNat < L

/-- A memory access at `w` passed the domain check of `D`: word accesses test `w`, byte
accesses its aligned base. -/
def Hit (D : BitVec width → Prop) (w : BitVec width) : Prop :=
  D w ∨ D (panByteAlignHOL w)

/-- Distance from an address to its byte-aligned base is below this. -/
def alignSlack (width : Nat) : Nat := 2 ^ Nat.log2 (width / 8)

/-- Largest per-iteration address step the analyzer accepts. -/
def addrStepMax : Nat := 4096

/-- Both memory domains of `X` lie in cyclic intervals of a common length `L` that leaves
room for alignment slack and one maximal step below `2 ^ width`. -/
def DomBounded (X : Ctx width) : Prop :=
  ∃ L, L + alignSlack width + addrStepMax ≤ 2 ^ width ∧
    (∃ lo, DomIn X.memaddrs lo L) ∧ (∃ lo, DomIn X.shMemaddrs lo L) ∧ L ≤ 2 ^ 35

omit [NeZero width] in
theorem byteAlign_sub_lt (w : BitVec width) :
    (w - panByteAlignHOL w).toNat < alignSlack width := by
  unfold panByteAlignHOL alignSlack
  have hA : 0 < 2 ^ Nat.log2 (width / 8) := Nat.two_pow_pos _
  generalize 2 ^ Nat.log2 (width / 8) = A at hA ⊢
  have hq : (w.toNat / A) * A ≤ w.toNat := Nat.div_mul_le_self _ _
  have hlt : (w.toNat / A) * A < 2 ^ width := Nat.lt_of_le_of_lt hq w.isLt
  rw [BitVec.toNat_sub, BitVec.toNat_ofNat, Nat.mod_eq_of_lt hlt]
  have hmod := Nat.mod_add_div' w.toNat A
  have hmlt := Nat.mod_lt w.toNat hA
  have hw := w.isLt
  rw [show 2 ^ width - (w.toNat / A) * A + w.toNat =
      (w.toNat - (w.toNat / A) * A) + 2 ^ width by omega,
    Nat.add_mod_right, Nat.mod_eq_of_lt (by omega)]
  omega

omit [NeZero width] in
theorem sub_add_sub' (a b c : BitVec width) : (a - b) + (b - c) = a - c := by
  apply BitVec.eq_of_toNat_eq
  simp only [BitVec.toNat_add, BitVec.toNat_sub]
  have ha := a.isLt; have hb := b.isLt; have hc := c.isLt
  rw [Nat.add_mod, Nat.mod_mod, Nat.mod_mod, ← Nat.add_mod]
  have : 2 ^ width - b.toNat + a.toNat + (2 ^ width - c.toNat + b.toNat) =
      (2 ^ width - c.toNat + a.toNat) + 2 ^ width := by omega
  rw [this, Nat.add_mod_right]

omit [NeZero width] in
theorem hit_offset {D : BitVec width → Prop} {lo : BitVec width} {L : Nat} (hD : DomIn D lo L)
    (hL : L + alignSlack width ≤ 2 ^ width) {w : BitVec width} (h : Hit D w) :
    (w - lo).toNat < L + alignSlack width := by
  rcases h with h | h
  · have := hD w h; omega
  · have h1 := hD _ h
    have h2 := byteAlign_sub_lt w
    rw [← sub_add_sub' w (panByteAlignHOL w) lo, BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
    omega

/-! ## The semantic rule -/

/-- One completed loop iteration. -/
def Completes (t : PanSemStateFiniteExact width σ) (body : ProgHOL width) : Prop :=
  (evaluateHOLFiniteState t body).1 = none ∨ (evaluateHOLFiniteState t body).1 = some .continue

omit [NeZero width] in
theorem add_sub_comm' (w d lo : BitVec width) : w + d - lo = (w - lo) + d := by
  rw [BitVec.sub_eq_add_neg, BitVec.sub_eq_add_neg, BitVec.add_assoc, BitVec.add_assoc,
    BitVec.add_comm d]

/-- If every completed iteration accesses an address `w` at offset `< L` from `lo`, and the
next iteration's address is `w + d` with `1 ≤ d ≤ K`, then the offsets increase strictly
without wrapping (`L + K ≤ 2 ^ width`), so the loop runs at most `L + 1` iterations. -/
theorem cost_while_addr {c : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (addr : PanSemStateFiniteExact width σ → Option (BitVec width)) (lo : BitVec width)
    (L K : Nat) (hLK : L + K ≤ 2 ^ width) (hb : Cost σ X body B)
    (hdecA : ∀ s, addr (decClockHOLFinite s) = addr s)
    (hacc : ∀ t, InCtx t X → Completes t body →
      ∃ w, addr t = some w ∧ (w - lo).toNat < L ∧
        ∃ d : BitVec width, 1 ≤ d.toNat ∧ d.toNat ≤ K ∧
          addr (evaluateHOLFiniteState t body).2 = some (w + d)) :
    Cost σ X (.while c body) ((L + 1) * (B + 1)) := by
  refine cost_while (fun s => match addr s with | some w => L - (w - lo).toNat | none => 0) L hb
    (fun s _ _ => by (try dsimp only); split <;> omega) ?_
  intro s hs _ _ hexit
  obtain ⟨w, hw, hwL, d, hd1, hdK, hw'⟩ := hacc (decClockHOLFinite s) hs hexit
  rw [hdecA] at hw
  (try dsimp only)
  rw [hw, hw']
  have hsum : (w + d - lo).toNat = (w - lo).toNat + d.toNat := by
    rw [add_sub_comm', BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]
  simp only [hsum]
  omega

/-- `cost_while_addr` weakened to the analyzer's fixed loop formula. -/
theorem cost_while_addr' {c : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (addr : PanSemStateFiniteExact width σ → Option (BitVec width)) (lo : BitVec width)
    (L K : Nat) (hLK : L + K ≤ 2 ^ width) (hb : Cost σ X body B)
    (hdecA : ∀ s, addr (decClockHOLFinite s) = addr s)
    (hacc : ∀ t, InCtx t X → Completes t body →
      ∃ w, addr t = some w ∧ (w - lo).toNat < L ∧
        ∃ d : BitVec width, 1 ≤ d.toNat ∧ d.toNat ≤ K ∧
          addr (evaluateHOLFiniteState t body).2 = some (w + d)) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) :=
  (cost_while_addr addr lo L K hLK hb hdecA hacc).mono
    (Nat.mul_le_mul_right _ (by omega))

/-! ## Ranges of word locals -/

/-- Local `x` holds a word in `[lo, hi]`. -/
def InRange (s : PanSemStateFiniteExact width σ) (x : MlS) (lo hi : Nat) : Prop :=
  ∃ w, s.locals.lookup x = some (.val (.word w)) ∧ lo ≤ w.toNat ∧ w.toNat ≤ hi

/-- Range facts `(x, lo, hi)`. -/
abbrev Facts := List (MlS × Nat × Nat)

def FactsHold (s : PanSemStateFiniteExact width σ) (F : Facts) : Prop :=
  ∀ f ∈ F, InRange s f.1 f.2.1 f.2.2

theorem factsHold_nil (s : PanSemStateFiniteExact width σ) : FactsHold s [] := by
  intro f hf; cases hf

theorem factsHold_append {s : PanSemStateFiniteExact width σ} {F G : Facts}
    (hF : FactsHold s F) (hG : FactsHold s G) : FactsHold s (F ++ G) := by
  intro f hf
  rcases List.mem_append.mp hf with h | h
  · exact hF f h
  · exact hG f h

/-- Intersection of the facts about `y`. -/
def rangeOf : Facts → MlS → Option (Nat × Nat)
  | [], _ => none
  | (x, l, h) :: F, y =>
      if x = y then
        match rangeOf F y with
        | none => some (l, h)
        | some (l', h') => some (max l l', min h h')
      else rangeOf F y

theorem rangeOf_sound {s : PanSemStateFiniteExact width σ} :
    ∀ (F : Facts) (y : MlS) (l h : Nat), FactsHold s F → rangeOf F y = some (l, h) →
      InRange s y l h
  | [], _, _, _, _, hr => by simp [rangeOf] at hr
  | (x, l0, h0) :: F, y, l, h, hF, hr => by
      have hF' : FactsHold s F := fun f hf => hF f (List.mem_cons_of_mem _ hf)
      unfold rangeOf at hr
      split at hr
      · rename_i hxy
        subst hxy
        obtain ⟨w, hw, hl, hh⟩ := hF (x, l0, h0) List.mem_cons_self
        dsimp only at hl hh
        split at hr
        · simp only [Option.some.injEq, Prod.mk.injEq] at hr
          obtain ⟨rfl, rfl⟩ := hr
          exact ⟨w, hw, hl, hh⟩
        · rename_i l' h' hr'
          obtain ⟨w', hw', hl', hh'⟩ := rangeOf_sound F x l' h' hF' hr'
          rw [hw] at hw'
          simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
          subst hw'
          simp only [Option.some.injEq, Prod.mk.injEq] at hr
          obtain ⟨rfl, rfl⟩ := hr
          exact ⟨w, hw, by omega, by omega⟩
      · exact rangeOf_sound F y l h hF' hr

/-- Range of a pure word expression under facts `F`. -/
def rangeExp (F : Facts) : ExpHOL width → Option (Nat × Nat)
  | .const c => some (c.toNat, c.toNat)
  | .var .local y => rangeOf F y
  | .op .add [a, b] =>
      match rangeExp F a, rangeExp F b with
      | some (l1, h1), some (l2, h2) =>
          if h1 + h2 < 2 ^ width then some (l1 + l2, h1 + h2) else none
      | _, _ => none
  | .op .sub [a, b] =>
      match rangeExp F a, rangeExp F b with
      | some (l1, h1), some (l2, h2) => if h2 ≤ l1 then some (l1 - h2, h1 - l2) else none
      | _, _ => none
  | _ => none

theorem rangeExp_sound {s : PanSemStateFiniteExact width σ} {F : Facts} (hF : FactsHold s F)
    (e : ExpHOL width) : ∀ l h, rangeExp F e = some (l, h) →
      ∃ w, (∀ inst, @evalHOLExact width σ _ s.toExact inst e = some (.val (.word w))) ∧
        l ≤ w.toNat ∧ w.toNat ≤ h := by
  induction e using rangeExp.induct (F := F) with
  | case1 c =>
      intro l h hr
      simp only [rangeExp, Option.some.injEq, Prod.mk.injEq] at hr
      obtain ⟨rfl, rfl⟩ := hr
      exact ⟨c, fun _ => by simp [evalHOLExact], Nat.le_refl _, Nat.le_refl _⟩
  | case2 y =>
      intro l h hr
      simp only [rangeExp] at hr
      obtain ⟨w, hw, hl, hh⟩ := rangeOf_sound F y l h hF hr
      exact ⟨w, fun _ => by simpa [evalHOLExact] using hw, hl, hh⟩
  | case3 a b l1 h1 l2 h2 hb ha hlt iha ihb =>
      intro l h hr
      simp only [rangeExp, ha, hb, if_pos hlt, Option.some.injEq, Prod.mk.injEq] at hr
      obtain ⟨rfl, rfl⟩ := hr
      obtain ⟨x, hx, hxl, hxh⟩ := iha l1 h1 ha
      obtain ⟨y, hy, hyl, hyh⟩ := ihb l2 h2 hb
      refine ⟨x + y, fun inst => ?_, ?_, ?_⟩
      · simp [evalHOLExact, evalListHOLExact, hx inst, hy inst, valueIsWord, valueWord,
          wordOpHOL, wordOp]
      · rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]; omega
      · rw [BitVec.toNat_add, Nat.mod_eq_of_lt (by omega)]; omega
  | case4 a b l1 h1 l2 h2 hb ha hlt =>
      intro l h hr
      simp [rangeExp, ha, hb, hlt] at hr
  | case5 a b hn =>
      intro l h hr
      simp only [rangeExp] at hr
      (try split at hr)
      all_goals first
        | simp at hr
        | (rename_i l1 h1 l2 h2 ha hb; exact absurd hb (fun hb => hn l1 h1 l2 h2 ha hb))
  | case6 a b l1 h1 l2 h2 hb ha hle iha ihb =>
      intro l h hr
      simp only [rangeExp, ha, hb, if_pos hle, Option.some.injEq, Prod.mk.injEq] at hr
      obtain ⟨rfl, rfl⟩ := hr
      obtain ⟨x, hx, hxl, hxh⟩ := iha l1 h1 ha
      obtain ⟨y, hy, hyl, hyh⟩ := ihb l2 h2 hb
      have hyx : y.toNat ≤ x.toNat := by omega
      refine ⟨x - y, fun inst => ?_, ?_, ?_⟩
      · simp [evalHOLExact, evalListHOLExact, hx inst, hy inst, valueIsWord, valueWord,
          wordOpHOL, wordOp]
      · rw [BitVec.toNat_sub_of_le (BitVec.le_def.mpr hyx)]; omega
      · rw [BitVec.toNat_sub_of_le (BitVec.le_def.mpr hyx)]; omega
  | case7 a b l1 h1 l2 h2 hb ha hle =>
      intro l h hr
      simp [rangeExp, ha, hb, hle] at hr
  | case8 a b hn =>
      intro l h hr
      simp only [rangeExp] at hr
      (try split at hr)
      all_goals first
        | simp at hr
        | (rename_i l1 h1 l2 h2 ha hb; exact absurd hb (fun hb => hn l1 h1 l2 h2 ha hb))
  | case9 t h1 h2 h3 h4 =>
      intro l h hr
      unfold rangeExp at hr
      split at hr
      · exact absurd rfl (h1 _)
      · exact absurd rfl (h2 _)
      · exact absurd rfl (h3 _ _)
      · exact absurd rfl (h4 _ _)
      · simp at hr

/-! ## Facts from guards -/

/-- Facts implied by a true comparison between a word local and a constant. -/
def cmpFacts (op : Flapjack.Cmp) : ExpHOL width → ExpHOL width → Facts
  | .var .local y, .const c =>
      match op with
      | .notLower => [(y, c.toNat, 2 ^ width - 1)]
      | .lower => [(y, 0, c.toNat - 1)]
      | .equal => [(y, c.toNat, c.toNat)]
      | _ => []
  | .const c, .var .local y =>
      match op with
      | .notLower => [(y, 0, c.toNat)]
      | .lower => [(y, c.toNat + 1, 2 ^ width - 1)]
      | .equal => [(y, c.toNat, c.toNat)]
      | _ => []
  | _, _ => []

/-- Facts implied by a guard that evaluates to a nonzero word. Pancake's `a && b` is the
bitwise `and` of `0 != a` and `0 != b`. -/
def guardFacts : ExpHOL width → Facts
  | .op .and [a, b] => guardFacts a ++ guardFacts b
  | .cmp op l r =>
      cmpFacts op l r ++
        (match op, l with
          | .notEqual, .const z => if z = 0 then guardFacts r else []
          | _, _ => [])
  | _ => []

theorem cmpFacts_sound {s : PanSemStateFiniteExact width σ}
    (inst : DecidablePred s.toExact.memaddrs) {op : Flapjack.Cmp} {l r : ExpHOL width}
    {x y : BitVec width}
    (hl : @evalHOLExact width σ _ s.toExact inst l = some (.val (.word x)))
    (hr : @evalHOLExact width σ _ s.toExact inst r = some (.val (.word y)))
    (hc : wordCmpHOL op x y = true) : FactsHold s (cmpFacts op l r) := by
  have hx := x.isLt
  have hy := y.isLt
  unfold cmpFacts
  split
  · rename_i v c
    simp only [evalHOLExact] at hl hr
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hr
    subst hr
    split <;> intro f hf <;> simp only [List.mem_cons, List.not_mem_nil, or_false] at hf <;>
      subst hf <;> refine ⟨x, hl, ?_, ?_⟩
    all_goals dsimp only
    all_goals simp [wordCmpHOL, BitVec.lt_def] at hc
    all_goals (first | omega | (subst hc; omega))
  · rename_i c v
    simp only [evalHOLExact] at hl hr
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hl
    subst hl
    split <;> intro f hf <;> simp only [List.mem_cons, List.not_mem_nil, or_false] at hf <;>
      subst hf <;> refine ⟨y, hr, ?_, ?_⟩
    all_goals dsimp only
    all_goals simp [wordCmpHOL, BitVec.lt_def] at hc
    all_goals (first | omega | (subst hc; omega))
  · intro f hf; simp at hf

theorem guardFacts_sound {s : PanSemStateFiniteExact width σ}
    (inst : DecidablePred s.toExact.memaddrs) (g : ExpHOL width) :
    ∀ w, @evalHOLExact width σ _ s.toExact inst g = some (.val (.word w)) → w ≠ 0 →
      FactsHold s (guardFacts g) := by
  induction g using guardFacts.induct with
  | case1 a b iha ihb =>
      intro w h hw
      simp only [guardFacts]
      cases ha : @evalHOLExact width σ _ s.toExact inst a with
      | none => simp [evalHOLExact, evalListHOLExact, ha] at h
      | some va =>
        cases hb : @evalHOLExact width σ _ s.toExact inst b with
        | none => simp [evalHOLExact, evalListHOLExact, ha, hb] at h
        | some vb =>
          rcases va with ⟨⟨x⟩⟩ | _ | _ <;> rcases vb with ⟨⟨y⟩⟩ | _ | _ <;>
            simp [evalHOLExact, evalListHOLExact, ha, hb, valueIsWord, valueWord, wordOpHOL,
              wordOp] at h
          have hx : x ≠ 0 := by
            rintro rfl; apply hw; rw [← h]; simp [AndOp.and]
          have hy : y ≠ 0 := by
            rintro rfl; apply hw; rw [← h]; simp [AndOp.and]
          exact factsHold_append (iha x ha hx) (ihb y hb hy)
  | case2 op l r ihr =>
      intro w h hw
      simp only [evalHOLExact] at h
      split at h
      · rename_i x y hl hr
        simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at h
        have hc : wordCmpHOL op x y = true := by
          cases hcmp : wordCmpHOL op x y
          · rw [hcmp] at h; exact absurd h.symm (by simpa using hw)
          · rfl
        simp only [guardFacts]
        refine factsHold_append (cmpFacts_sound inst hl hr hc) ?_
        split
        · split
          · rename_i z hz
            subst hz
            simp only [evalHOLExact, Option.some.injEq, ValueHOL.val.injEq,
              HolWordLab.word.injEq] at hl
            subst hl
            refine ihr y hr ?_
            rintro rfl
            simp [wordCmpHOL] at hc
          · exact factsHold_nil s
        · exact factsHold_nil s
      · simp at h
  | case3 t h1 h2 =>
      intro _ _ _
      unfold guardFacts
      split
      · exact (h1 _ _ rfl).elim
      · exact (h2 _ _ _ rfl).elim
      · exact factsHold_nil s

/-! ## Range invariants -/

theorem setVar_lookup_ne {s : PanSemStateFiniteExact width σ} {n y : MlS} {v : ValueHOL width}
    (h : y ≠ n) : (setVarHOLFinite n v s).locals.lookup y = s.locals.lookup y := by
  simp [setVarHOLFinite, FUPDATE, Ne.symm h]

theorem factsHold_setVar_filter {s : PanSemStateFiniteExact width σ} {F : Facts} {n : MlS}
    {v : ValueHOL width} (hF : FactsHold s F) :
    FactsHold (setVarHOLFinite n v s) (F.filter (fun f => decide (f.1 ≠ n))) := by
  intro f hf
  obtain ⟨hf, hne⟩ := List.mem_filter.mp hf
  have hne : f.1 ≠ n := by simpa using hne
  obtain ⟨w, hw, hl, hh⟩ := hF f hf
  exact ⟨w, by rw [setVar_lookup_ne hne]; exact hw, hl, hh⟩

/-- Given facts `F` at entry, normal completion of `p` keeps local `x` in `[lo, hi]`. -/
def RangeInv (σ : Type) (F : Facts) (x : MlS) (lo hi : Nat) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, FactsHold s F → InRange s x lo hi →
    (evaluateHOLFiniteState s p).1 = none → InRange (evaluateHOLFiniteState s p).2 x lo hi

theorem rangeInv_of_keeps {F : Facts} {x : MlS} {lo hi : Nat} {p : ProgHOL width}
    (h : Keeps σ x p) : RangeInv σ F x lo hi p := by
  intro s _ hr hn
  obtain ⟨w, hw, hl, hh⟩ := hr
  exact ⟨w, (h s (Or.inl hn)).trans hw, hl, hh⟩

theorem rangeInv_assign {F : Facts} {x : MlS} {lo hi l h : Nat} {e : ExpHOL width}
    (he : rangeExp F e = some (l, h)) (hlo : lo ≤ l) (hhi : h ≤ hi) :
    RangeInv σ F x lo hi (.assign .local x e) := by
  intro s hF _ hn
  obtain ⟨w, hw, hl, hh⟩ := rangeExp_sound hF e l h he
  revert hn
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  rw [hw]
  dsimp only
  split
  · intro _
    refine ⟨w, ?_, by omega, by omega⟩
    simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE]
  · intro h; cases h

theorem rangeInv_seq {F : Facts} {x : MlS} {lo hi : Nat} {a b : ProgHOL width}
    (ha : RangeInv σ F x lo hi a) (hb : RangeInv σ [] x lo hi b) :
    RangeInv σ F x lo hi (.seq a b) := by
  intro s hF hr
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none => intro hn; exact hb _ (factsHold_nil _) (ha s hF hr h1) hn
  | some r => intro hn; dsimp only at hn; rw [h1] at hn; cases hn

theorem rangeInv_ite {F : Facts} {x : MlS} {lo hi : Nat} {g : ExpHOL width} {a b : ProgHOL width}
    (ha : RangeInv σ (guardFacts g ++ F) x lo hi a) (hb : RangeInv σ F x lo hi b) :
    RangeInv σ F x lo hi (.ite g a b) := by
  intro s hF hr
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite g a b)]
  dsimp only
  split
  · rename_i w hw
    split
    · exact hb s hF hr
    · rename_i hne
      exact ha s (factsHold_append (guardFacts_sound _ g w hw hne) hF) hr
  · intro h; cases h

theorem rangeInv_dec {F : Facts} {x n : MlS} {lo hi : Nat} {sh : ShapeHOL} {e : ExpHOL width}
    {b : ProgHOL width} (hxn : x ≠ n)
    (hb : RangeInv σ (F.filter (fun f => decide (f.1 ≠ n))) x lo hi b) :
    RangeInv σ F x lo hi (.dec n sh e b) := by
  intro s hF hr
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  split
  · intro h; cases h
  · rename_i v _
    split
    · intro hn
      obtain ⟨w0, hw0, hl0, hh0⟩ := hr
      obtain ⟨w, hw, hl, hh⟩ := hb (setVarHOLFinite n v s) (factsHold_setVar_filter hF)
        ⟨w0, by rw [setVar_lookup_ne hxn]; exact hw0, hl0, hh0⟩ hn
      refine ⟨w, ?_, hl, hh⟩
      simp only [lookup_resVarEq_restore, if_neg hxn]
      exact hw
    · intro h; cases h

/-- Syntactic check of `RangeInv`: assignments to `x` must have a range inside `[lo, hi]`
(using the facts of enclosing guards for an assignment directly under an `if`). -/
def rangeInvB (F : Facts) (x : MlS) (lo hi : Nat) : ProgHOL width → Bool
  | .assign .local y e =>
      decide (y ≠ x) ||
        (match rangeExp F e with
          | some (l, h) => decide (y = x) && decide (lo ≤ l) && decide (h ≤ hi)
          | none => false)
  | .seq a b => rangeInvB F x lo hi a && rangeInvB [] x lo hi b
  | .ite g a b => rangeInvB (guardFacts g ++ F) x lo hi a && rangeInvB F x lo hi b
  | .dec n _ _ b => decide (n = x) || rangeInvB (F.filter (fun f => decide (f.1 ≠ n))) x lo hi b
  | p => keepsB x p

theorem rangeInvB_sound (F : Facts) (x : MlS) (lo hi : Nat) (p : ProgHOL width) :
    rangeInvB F x lo hi p = true → RangeInv σ F x lo hi p := by
  induction F, p using rangeInvB.induct with
  | case1 F y e =>
      intro h
      simp only [rangeInvB, Bool.or_eq_true, decide_eq_true_eq] at h
      rcases h with h | h
      · exact rangeInv_of_keeps (keeps_assign .local e (Or.inr h))
      · split at h
        · rename_i l hh he
          simp only [Bool.and_eq_true, decide_eq_true_eq] at h
          obtain ⟨⟨rfl, h1⟩, h2⟩ := h
          exact rangeInv_assign he h1 h2
        · cases h
  | case2 F a b iha ihb =>
      intro h
      simp only [rangeInvB, Bool.and_eq_true] at h
      exact rangeInv_seq (iha h.1) (ihb h.2)
  | case3 F g a b iha ihb =>
      intro h
      simp only [rangeInvB, Bool.and_eq_true] at h
      exact rangeInv_ite (iha h.1) (ihb h.2)
  | case4 F n sh e b ihb =>
      intro h
      simp only [rangeInvB, Bool.or_eq_true, decide_eq_true_eq] at h
      by_cases hnx : n = x
      · subst hnx
        exact rangeInv_of_keeps (keeps_dec (Or.inl rfl))
      · rcases h with h | h
        · exact absurd h hnx
        · exact rangeInv_dec (Ne.symm hnx) (ihb h)
  | case5 F t h1 h2 h3 h4 =>
      intro h
      have hk : keepsB x t = true := by
        unfold rangeInvB at h
        split at h
        · exact (h1 _ _ rfl).elim
        · exact (h2 _ _ rfl).elim
        · exact (h3 _ _ _ rfl).elim
        · exact (h4 _ _ _ _ rfl).elim
        · exact h
      exact rangeInv_of_keeps (keepsB_sound x t hk)

/-! ## Counter steps with bounded increments -/

/-- From a state where counter `i = v` and the facts `R` hold, a completed run of `p` ends
with `i = v + d` for some `d ∈ [1, K]`. -/
def StepsR (σ : Type) (i : MlS) (K : Nat) (R : Facts) (p : ProgHOL width) : Prop :=
  ∀ (s : PanSemStateFiniteExact width σ) (v : BitVec width),
    s.locals.lookup i = some (.val (.word v)) → FactsHold s R →
    ((evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .continue) →
    ∃ d : BitVec width, 1 ≤ d.toNat ∧ d.toNat ≤ K ∧
      (evaluateHOLFiniteState s p).2.locals.lookup i = some (.val (.word (v + d)))

/-- `i + k` with a constant `k ∈ [1, K]`, or `i + a` with `a ∈ [1, K]` by the facts `R`. -/
def incOk (i : MlS) (K : Nat) (R : Facts) : ExpHOL width → Bool
  | .op .add [.var .local j, .const k] =>
      decide (j = i) && decide (1 ≤ k.toNat) && decide (k.toNat ≤ K)
  | .op .add [.var .local j, .var .local a] =>
      decide (j = i) &&
        (match rangeOf R a with
          | some (l, h) => decide (1 ≤ l) && decide (h ≤ K)
          | none => false)
  | _ => false

theorem stepsR_assign {i : MlS} {K : Nat} {R : Facts} {e : ExpHOL width}
    (h : incOk i K R e = true) : StepsR σ i K R (.assign .local i e) := by
  intro s v hv hR hc
  have hinc : ∃ d : BitVec width, 1 ≤ d.toNat ∧ d.toNat ≤ K ∧
      ∀ inst, @evalHOLExact width σ _ s.toExact inst e = some (.val (.word (v + d))) := by
    unfold incOk at h
    split at h
    · rename_i j k
      simp only [Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨⟨rfl, h1⟩, h2⟩ := h
      exact ⟨k, h1, h2, fun _ => by
        simp [evalHOLExact, evalListHOLExact, hv, valueIsWord, valueWord, wordOpHOL, wordOp]⟩
    · rename_i j a
      simp only [Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨rfl, h⟩ := h
      split at h
      · rename_i l hh hr
        simp only [Bool.and_eq_true, decide_eq_true_eq] at h
        obtain ⟨wa, hwa, hl, hhw⟩ := rangeOf_sound R a l hh hR hr
        exact ⟨wa, by omega, by omega, fun _ => by
          simp [evalHOLExact, evalListHOLExact, hv, hwa, valueIsWord, valueWord, wordOpHOL,
            wordOp]⟩
      · cases h
    · cases h
  obtain ⟨d, h1, h2, he⟩ := hinc
  refine ⟨d, h1, h2, ?_⟩
  revert hc
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  rw [he]
  dsimp only
  split
  · intro _
    simp [setKvarHOLFinite, setVarHOLFinite, FUPDATE]
  · intro hc; rcases hc with hc | hc <;> cases hc

theorem stepsR_seq_left {i : MlS} {K : Nat} {R : Facts} {a b : ProgHOL width}
    (ha : StepsR σ i K R a) (hb : Keeps σ i b) : StepsR σ i K R (.seq a b) := by
  intro s v hv hR
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      obtain ⟨d, hd1, hd2, hd⟩ := ha s v hv hR (Or.inl h1)
      refine ⟨d, hd1, hd2, ?_⟩
      rcases hexit with h | h
      · rw [hb _ (Or.inl h)]; exact hd
      · rw [hb _ (Or.inr (Or.inl h))]; exact hd
  | some r =>
      intro hexit
      dsimp only at hexit ⊢
      exact ha s v hv hR hexit

/-- Normal completion of `p` keeps every fact of `R`. -/
def FactsKept (σ : Type) (R : Facts) (p : ProgHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, FactsHold s R → (evaluateHOLFiniteState s p).1 = none →
    FactsHold (evaluateHOLFiniteState s p).2 R

theorem factsKept_of_all {R : Facts} {p : ProgHOL width}
    (h : R.all (fun f => rangeInvB R f.1 f.2.1 f.2.2 p) = true) : FactsKept σ R p := by
  intro s hR hn f hf
  have hfB := List.all_eq_true.mp h f hf
  exact rangeInvB_sound R f.1 f.2.1 f.2.2 p hfB s hR (hR f hf) hn

theorem stepsR_seq_right {i : MlS} {K : Nat} {R : Facts} {a b : ProgHOL width}
    (ha : Keeps σ i a) (hc : NoCont σ a) (hk : FactsKept σ R a) (hb : StepsR σ i K R b) :
    StepsR σ i K R (.seq a b) := by
  intro s v hv hR
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      exact hb _ v (by rw [ha s (Or.inl h1)]; exact hv) (hk s hR h1) hexit
  | some r =>
      intro hexit
      dsimp only at hexit
      rcases hexit with h | h
      · first | (rw [h1] at h; cases h) | cases h
      · first | exact absurd h (hc s) | exact absurd (h1.trans h) (hc s)

/-- Facts inside `var n = e; ...`: a constant initializer in `[1, K]` gives `n ∈ [1, K]`;
facts about other locals survive. -/
def decFacts (K : Nat) (n : MlS) (e : ExpHOL width) (R : Facts) : Facts :=
  (match e with
    | .const c => if 1 ≤ c.toNat ∧ c.toNat ≤ K then [(n, 1, K)] else []
    | _ => []) ++ R.filter (fun f => decide (f.1 ≠ n))

theorem stepsR_dec {i n : MlS} {K : Nat} {R : Facts} {sh : ShapeHOL} {e : ExpHOL width}
    {b : ProgHOL width} (hn : n ≠ i) (hb : StepsR σ i K (decFacts K n e R) b) :
    StepsR σ i K R (.dec n sh e b) := by
  intro s v hv hR
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  split
  · intro h; simp at h
  · rename_i val hval
    split
    · intro hexit
      have hv' : (setVarHOLFinite n val s).locals.lookup i = some (.val (.word v)) := by
        rw [setVar_lookup_ne (Ne.symm hn)]; exact hv
      have hR' : FactsHold (setVarHOLFinite n val s) (decFacts K n e R) := by
        refine factsHold_append ?_ (factsHold_setVar_filter hR)
        split
        · rename_i c
          split
          · rename_i hc
            simp only [evalHOLExact, Option.some.injEq] at hval
            subst hval
            intro f hf
            simp only [List.mem_cons, List.not_mem_nil, or_false] at hf
            subst hf
            exact ⟨c, by simp [setVarHOLFinite, FUPDATE], hc.1, hc.2⟩
          · exact factsHold_nil _
        · exact factsHold_nil _
      obtain ⟨d, h1, h2, hd⟩ := hb _ v hv' hR' hexit
      refine ⟨d, h1, h2, ?_⟩
      simp only [lookup_resVarEq_restore, if_neg (Ne.symm hn)]
      exact hd
    · intro h; simp at h

/-- Syntactic check of `StepsR`. -/
def stepsRB (i : MlS) (K : Nat) (R : Facts) : ProgHOL width → Bool
  | .assign .local j e => decide (j = i) && incOk i K R e
  | .seq a b =>
      (stepsRB i K R a && keepsB i b) ||
        (keepsB i a && noContB a && R.all (fun f => rangeInvB R f.1 f.2.1 f.2.2 a) &&
          stepsRB i K R b)
  | .dec n _ e b => decide (n ≠ i) && stepsRB i K (decFacts K n e R) b
  | _ => false

theorem stepsRB_sound (i : MlS) (K : Nat) (R : Facts) (p : ProgHOL width) :
    stepsRB i K R p = true → StepsR σ i K R p := by
  induction R, p using stepsRB.induct (K := K) with
  | case1 R j e =>
      intro h
      simp only [stepsRB, Bool.and_eq_true, decide_eq_true_eq] at h
      obtain ⟨rfl, h⟩ := h
      exact stepsR_assign h
  | case2 R a b iha ihb =>
      intro h
      simp only [stepsRB, Bool.or_eq_true, Bool.and_eq_true] at h
      rcases h with ⟨ha, hb⟩ | ⟨⟨⟨ha, hc⟩, hk⟩, hb⟩
      · exact stepsR_seq_left (iha ha) (keepsB_sound i b hb)
      · exact stepsR_seq_right (keepsB_sound i a ha) (noContB_sound a hc) (factsKept_of_all hk)
          (ihb hb)
  | case3 R n sh e b ihb =>
      intro h
      simp only [stepsRB, Bool.and_eq_true, decide_eq_true_eq] at h
      exact stepsR_dec h.1 (ihb h.2)
  | case4 R t h1 h2 h3 =>
      intro h
      unfold stepsRB at h
      split at h
      · exact (h1 _ _ rfl).elim
      · exact (h2 _ _ rfl).elim
      · exact (h3 _ _ _ _ rfl).elim
      · cases h

/-! ## The access at the start of the body -/

/-- A base for counter `i`: a constant or another local. -/
def isBase (i : MlS) : ExpHOL width → Bool
  | .const _ => true
  | .var .local b => decide (b ≠ i)
  | _ => false

def baseVal (s : PanSemStateFiniteExact width σ) : ExpHOL width → Option (BitVec width)
  | .const c => some c
  | .var .local b => wordLocal s b
  | _ => none

/-- The address `B + i` in state `s`. -/
def addrOf (B : ExpHOL width) (i : MlS) (s : PanSemStateFiniteExact width σ) :
    Option (BitVec width) :=
  match baseVal s B, wordLocal s i with
  | some b, some v => some (b + v)
  | _, _ => none

theorem eval_addr {s : PanSemStateFiniteExact width σ} (inst : DecidablePred s.toExact.memaddrs)
    {i : MlS} {B : ExpHOL width} (hB : isBase i B = true) {w : BitVec width}
    (h : @evalHOLExact width σ _ s.toExact inst (.op .add [B, .var .local i]) =
      some (.val (.word w))) : addrOf B i s = some w := by
  unfold isBase at hB
  split at hB
  · rename_i c
    cases hi : s.locals.lookup i with
    | none => simp [evalHOLExact, evalListHOLExact, hi] at h
    | some vi =>
      rcases vi with ⟨⟨v⟩⟩ | _ | _ <;>
        simp [evalHOLExact, evalListHOLExact, hi, valueIsWord, valueWord, wordOpHOL, wordOp] at h
      simp [addrOf, baseVal, wordLocal, hi, h]
  · rename_i b
    cases hb : s.locals.lookup b with
    | none => simp [evalHOLExact, evalListHOLExact, hb] at h
    | some vb =>
      cases hi : s.locals.lookup i with
      | none => simp [evalHOLExact, evalListHOLExact, hb, hi] at h
      | some vi =>
        rcases vb with ⟨⟨x⟩⟩ | _ | _ <;> rcases vi with ⟨⟨v⟩⟩ | _ | _ <;>
          simp [evalHOLExact, evalListHOLExact, hb, hi, valueIsWord, valueWord, wordOpHOL,
            wordOp] at h
        simp [addrOf, baseVal, wordLocal, hb, hi, h]
  · cases hB

/-- The body starts with a memory access at `B + i`: a shared-memory load
`!ld* x, B + i; ...` (`true`) or a byte load `var x = ld8 (B + i); ...` (`false`). -/
def accessB : ProgHOL width → Option (ExpHOL width × MlS × Bool)
  | .seq (.shMemLoad _ _ _ (.op .add [B, .var .local i])) _ =>
      if isBase i B then some (B, i, true) else none
  | .dec _ _ (.loadByte (.op .add [B, .var .local i])) _ =>
      if isBase i B then some (B, i, false) else none
  | _ => none

theorem seq_completes {a b : ProgHOL width} (hna : NoCont σ a)
    {t : PanSemStateFiniteExact width σ} (hc : Completes t (.seq a b)) :
    (evaluateHOLFiniteState t a).1 = none := by
  unfold Completes at hc
  revert hc
  rw [evaluateHOLFiniteState_eq_evaluate_def t (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState t a).1 with
  | none => intro _; rfl
  | some r =>
      intro hexit
      dsimp only at hexit
      rcases hexit with h | h
      · first | (rw [h1] at h; cases h) | cases h
      · first | exact absurd h (hna t) | exact absurd (h1.trans h) (hna t)

theorem shMemLoad_hit {o : OpSize} {k : VarKind} {x : MlS} {e : ExpHOL width}
    {t : PanSemStateFiniteExact width σ}
    (h : (evaluateHOLFiniteState t (.shMemLoad o k x e)).1 = none) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (w : BitVec width),
      @evalHOLExact width σ _ t.toExact inst e = some (.val (.word w)) ∧ Hit t.shMemaddrs w := by
  revert h
  rw [evaluateHOLFiniteState_eq_evaluate_def]
  dsimp only
  split
  · rename_i w hw
    split
    · intro h
      refine ⟨_, w, hw, ?_⟩
      unfold shMemLoadHOLFiniteExact at h
      split at h
      · split at h
        · rename_i hd; exact Or.inl hd
        · simp at h
      · split at h
        · rename_i hd; exact Or.inr hd
        · simp at h
    · intro h; simp at h
  · intro h; simp at h

theorem decLoadByte_hit {x : MlS} {sh : ShapeHOL} {e : ExpHOL width} {rest : ProgHOL width}
    {t : PanSemStateFiniteExact width σ} (hc : Completes t (.dec x sh (.loadByte e) rest)) :
    ∃ (inst : DecidablePred t.toExact.memaddrs) (w : BitVec width),
      @evalHOLExact width σ _ t.toExact inst e = some (.val (.word w)) ∧ Hit t.memaddrs w := by
  unfold Completes at hc
  revert hc
  rw [evaluateHOLFiniteState_eq_evaluate_def t (.dec _ _ _ _)]
  dsimp only
  split
  · intro h; simp at h
  · rename_i val hval
    intro _
    simp only [evalHOLExact] at hval
    split at hval
    · rename_i w hw
      refine ⟨_, w, hw, Or.inr ?_⟩
      obtain ⟨b, hb, -⟩ := Option.map_eq_some_iff.mp hval
      unfold panMemLoadByteHOL at hb
      dsimp only at hb
      split at hb
      · assumption
      · simp at hb
    · simp at hval

theorem accessB_hit {body : ProgHOL width} {B : ExpHOL width} {i : MlS} {sh : Bool}
    (h : accessB body = some (B, i, sh)) {t : PanSemStateFiniteExact width σ}
    (hc : Completes t body) :
    ∃ w, addrOf B i t = some w ∧ Hit (if sh then t.shMemaddrs else t.memaddrs) w := by
  unfold accessB at h
  split at h
  · rename_i o k x B' i' rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨rfl, rfl, rfl⟩ := h
      obtain ⟨inst, w, hw, hhit⟩ := shMemLoad_hit (seq_completes (noCont_shMemLoad _ _ _ _) hc)
      exact ⟨w, eval_addr inst hB hw, hhit⟩
    · cases h
  · rename_i x sh' B' i' rest
    split at h
    · rename_i hB
      simp only [Option.some.injEq, Prod.mk.injEq] at h
      obtain ⟨rfl, rfl, rfl⟩ := h
      obtain ⟨inst, w, hw, hhit⟩ := decLoadByte_hit hc
      exact ⟨w, eval_addr inst hB hw, hhit⟩
    · cases h
  · cases h

/-! ## The loop checker -/

/-- A local base is not changed by the body. -/
def baseKeptB (B : ExpHOL width) (b : ProgHOL width) : Bool :=
  match B with
  | .var .local x => keepsB x b
  | _ => true

theorem baseKept {B : ExpHOL width} {b : ProgHOL width} (h : baseKeptB B b = true)
    {t : PanSemStateFiniteExact width σ} (hc : Completes t b) :
    baseVal (evaluateHOLFiniteState t b).2 B = baseVal t B := by
  unfold baseKeptB at h
  split at h
  · rename_i x
    have hk := keepsB_sound (σ := σ) x b h t (by rcases hc with hc | hc <;> simp [LoopExit, hc])
    simp only [baseVal, wordLocal, hk]
  · rename_i hne
    unfold baseVal
    split
    all_goals first | rfl | exact (hne _ rfl).elim

theorem addrOf_step {B : ExpHOL width} {i : MlS} {s t : PanSemStateFiniteExact width σ}
    {w v d : BitVec width} (hw : addrOf B i s = some w)
    (hv : s.locals.lookup i = some (.val (.word v)))
    (ht : t.locals.lookup i = some (.val (.word (v + d)))) (hB : baseVal t B = baseVal s B) :
    addrOf B i t = some (w + d) := by
  unfold addrOf at hw ⊢
  rw [hB]
  have hv' : wordLocal s i = some v := by simp [wordLocal, hv]
  have ht' : wordLocal t i = some (v + d) := by simp [wordLocal, ht]
  rw [hv'] at hw
  rw [ht']
  cases hb : baseVal s B with
  | none => rw [hb] at hw; cases hw
  | some b =>
      rw [hb] at hw
      simp only [Option.some.injEq] at hw ⊢
      rw [← hw, BitVec.add_assoc]

theorem wordLocal_some {s : PanSemStateFiniteExact width σ} {i : MlS} {v : BitVec width}
    (h : wordLocal s i = some v) : s.locals.lookup i = some (.val (.word v)) := by
  unfold wordLocal at h
  split at h
  · rename_i w hw; simp only [Option.some.injEq] at h; subst h; exact hw
  · cases h

/-- A loop whose body starts with a memory access at `B + i`, keeps a local base `B`, and
steps `i` by `d ∈ [1, addrStepMax]` on every completed iteration. -/
def loopOkAddr (b : ProgHOL width) : Bool :=
  match accessB b with
  | some (B, i, _) => stepsRB i addrStepMax [] b && baseKeptB B b
  | none => false

theorem loopOkAddr_sound (hX : DomBounded X) {c : ExpHOL width} {b : ProgHOL width} {B : Nat}
    (h : loopOkAddr b = true) (hb : Cost σ X b B) :
    Cost σ X (.while c b) ((2 ^ width + 1) * (B + 1)) := by
  unfold loopOkAddr at h
  split at h
  · rename_i Bs i sh hacc
    simp only [Bool.and_eq_true] at h
    obtain ⟨hst, hkb⟩ := h
    have hsteps := stepsRB_sound (σ := σ) i addrStepMax [] b hst
    obtain ⟨L, hL, ⟨lo1, hD1⟩, ⟨lo2, hD2⟩, -⟩ := hX
    have hLs : L + alignSlack width ≤ 2 ^ width := by omega
    refine cost_while_addr' (addrOf Bs i) (if sh then lo2 else lo1) (L + alignSlack width)
      addrStepMax (by omega) hb (fun _ => rfl) ?_
    intro t ht hc
    obtain ⟨w, hw, hhit⟩ := accessB_hit hacc hc
    refine ⟨w, hw, ?_, ?_⟩
    · cases sh
      · simp only [Bool.false_eq_true, if_false] at hhit ⊢
        exact hit_offset hD1 hLs (ht.2.1 ▸ hhit)
      · simp only [if_true] at hhit ⊢
        exact hit_offset hD2 hLs (ht.2.2 ▸ hhit)
    · have hw' := hw
      unfold addrOf at hw'
      cases hv : wordLocal t i with
      | none => rw [hv] at hw'; split at hw' <;> simp_all
      | some v =>
          have hv' := wordLocal_some hv
          obtain ⟨d, hd1, hd2, hd⟩ := hsteps t v hv' (factsHold_nil t) hc
          exact ⟨d, hd1, hd2, addrOf_step hw hv' hd (baseKept hkb hc)⟩
  · cases h

end InitECandidate.Solver.SourceCost
