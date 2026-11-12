import InitECandidate.Solver.SourceCost.LoopExtra.Data.AndCounter
import InitECandidate.Solver.SourceCost.LoopExtra.Data.Slice

/-!
# The merge loop of `sort_elems` (needs an entry fact)

```
var i = left; var j = mid; var k = left;
while (i < mid) && (j < right) { ...; if gt == 0 { ...; i = i + 1 } else { ...; j = j + 1 }; k = k + 1 }
```

Each iteration steps exactly one of `i`, `j` by one, so `(mid - i) + (right - j)` (signed
keys) drops by one. In isolation that sum may be close to `2 ^ (width + 1)` (with
`i`, `j` far below `mid`, `right`), which is more than the `2 ^ width + 1` iterations the
per-loop rule may charge, and the merge loop really can run that long for adversarial
callees: no rule that sees only `while c b` can accept it. With the entry fact `j = mid`
(from `var j = mid`) the sum is `right - i < 2 ^ width`.

* `Steps2 σ i j p` / `steps2B`: a completed run steps exactly one of `i`, `j` by one.
* `cost_while_merge_entry`: the loop's cost from entry states with `j = mid`.
* `cost_dec_merge` / `decMergeOk`: the statement `var j = mid; var k = e; (while ...); rest`,
  a case of `costA` (`Analyzer.lean`).
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open Flapjack.Compiler.Encoders.Asm (wordCmpHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-! ## Stepping one of two counters -/

/-- A completed run of `p` steps exactly one of `i`, `j` by one. -/
def Steps2 (σ : Type) (i j : MlS) (p : ProgHOL width) : Prop :=
  ∀ (s : PanSemStateFiniteExact width σ) (vi vj : BitVec width),
    s.locals.lookup i = some (.val (.word vi)) → s.locals.lookup j = some (.val (.word vj)) →
    ((evaluateHOLFiniteState s p).1 = none ∨ (evaluateHOLFiniteState s p).1 = some .continue) →
    ((evaluateHOLFiniteState s p).2.locals.lookup i = some (.val (.word (vi + 1))) ∧
      (evaluateHOLFiniteState s p).2.locals.lookup j = some (.val (.word vj))) ∨
    ((evaluateHOLFiniteState s p).2.locals.lookup i = some (.val (.word vi)) ∧
      (evaluateHOLFiniteState s p).2.locals.lookup j = some (.val (.word (vj + 1))))

theorem steps2_left {i j : MlS} {p : ProgHOL width} (hs : Steps σ i (· + 1) p)
    (hk : Keeps σ j p) : Steps2 σ i j p := by
  intro s vi vj hi hj hexit
  refine Or.inl ⟨hs s vi hi hexit, ?_⟩
  rw [hk s (by rcases hexit with h | h <;> simp [LoopExit, h])]
  exact hj

theorem steps2_right {i j : MlS} {p : ProgHOL width} (hs : Steps σ j (· + 1) p)
    (hk : Keeps σ i p) : Steps2 σ i j p := by
  intro s vi vj hi hj hexit
  refine Or.inr ⟨?_, hs s vj hj hexit⟩
  rw [hk s (by rcases hexit with h | h <;> simp [LoopExit, h])]
  exact hi

theorem steps2_ite {i j : MlS} {g : ExpHOL width} {a b : ProgHOL width} (ha : Steps2 σ i j a)
    (hb : Steps2 σ i j b) : Steps2 σ i j (.ite g a b) := by
  intro s vi vj hi hj
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.ite g a b)]
  dsimp only
  split
  · split
    · exact hb s vi vj hi hj
    · exact ha s vi vj hi hj
  · intro h; simp at h

theorem steps2_seq_left {i j : MlS} {a b : ProgHOL width} (ha : Steps2 σ i j a)
    (hbi : Keeps σ i b) (hbj : Keeps σ j b) : Steps2 σ i j (.seq a b) := by
  intro s vi vj hi hj
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      have hx : LoopExit (evaluateHOLFiniteState (evaluateHOLFiniteState s a).2 b).1 := by
        rcases hexit with h | h <;> simp [LoopExit, h]
      rw [hbi _ hx, hbj _ hx]
      exact ha s vi vj hi hj (Or.inl h1)
  | some r =>
      intro hexit
      dsimp only at hexit ⊢
      exact ha s vi vj hi hj hexit

theorem steps2_seq_right {i j : MlS} {a b : ProgHOL width} (hai : Keeps σ i a) (haj : Keeps σ j a)
    (hc : NoCont σ a) (hb : Steps2 σ i j b) : Steps2 σ i j (.seq a b) := by
  intro s vi vj hi hj
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)]
  dsimp only
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      intro hexit
      exact hb _ vi vj (by rw [hai s (Or.inl h1)]; exact hi) (by rw [haj s (Or.inl h1)]; exact hj)
        hexit
  | some r =>
      intro hexit
      dsimp only at hexit
      rcases hexit with h | h
      · rw [h1] at h; cases h
      · exact absurd h (hc s)

theorem steps2_dec {i j n : MlS} {sh : ShapeHOL} {e : ExpHOL width} {b : ProgHOL width}
    (hni : n ≠ i) (hnj : n ≠ j) (hb : Steps2 σ i j b) : Steps2 σ i j (.dec n sh e b) := by
  intro s vi vj hi hj
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec n sh e b)]
  dsimp only
  split
  · intro h; simp at h
  · split
    · intro hexit
      simp only [lookup_resVarEq_restore, if_neg (Ne.symm hni), if_neg (Ne.symm hnj)]
      exact hb _ vi vj (by simp [setVarHOLFinite, FUPDATE, hni, hi])
        (by simp [setVarHOLFinite, FUPDATE, hnj, hj]) hexit
    · intro h; simp at h

theorem steps2_decCall {i j rn f : MlS} {sh : ShapeHOL} {args : List (ExpHOL width)}
    {k : ProgHOL width} (hni : rn ≠ i) (hnj : rn ≠ j) (hk : Steps2 σ i j k) :
    Steps2 σ i j (.decCall rn sh f args k) := by
  intro s vi vj hi hj
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.decCall rn sh f args k)]
  dsimp only
  repeat' split
  all_goals intro hexit
  all_goals first
    | (simp at hexit; done)
    | (simp_all; done)
    | (simp only [lookup_resVarEq_restore, if_neg (Ne.symm hni), if_neg (Ne.symm hnj)]
       exact hk _ vi vj (by simp [setVarHOLFinite, FUPDATE, hni, hi])
        (by simp [setVarHOLFinite, FUPDATE, hnj, hj]) hexit)

/-- Syntactic check of `Steps2`. -/
def steps2B (i j : MlS) : ProgHOL width → Bool
  | .ite _ a b => steps2B i j a && steps2B i j b
  | .seq a b =>
      (steps2B i j a && keepsB i b && keepsB j b) ||
        (keepsB i a && keepsB j a && noContB a && steps2B i j b) ||
        (stepsB i true (.seq a b) && keepsB j (.seq a b)) ||
        (stepsB j true (.seq a b) && keepsB i (.seq a b))
  | .dec n _ _ b => decide (n ≠ i) && decide (n ≠ j) && steps2B i j b
  | .decCall rn _ _ _ k => decide (rn ≠ i) && decide (rn ≠ j) && steps2B i j k
  | p => (stepsB i true p && keepsB j p) || (stepsB j true p && keepsB i p)

theorem steps2B_base {i j : MlS} {p : ProgHOL width}
    (h : ((stepsB i true p && keepsB j p) || (stepsB j true p && keepsB i p)) = true) :
    Steps2 σ i j p := by
  simp only [Bool.or_eq_true, Bool.and_eq_true] at h
  rcases h with ⟨h1, h2⟩ | ⟨h1, h2⟩
  · exact steps2_left (stepsB_sound i true p h1) (keepsB_sound j p h2)
  · exact steps2_right (stepsB_sound j true p h1) (keepsB_sound i p h2)

theorem steps2B_sound (i j : MlS) : ∀ p : ProgHOL width, steps2B i j p = true → Steps2 σ i j p
  | .ite _ a b, h => by
      simp only [steps2B, Bool.and_eq_true] at h
      exact steps2_ite (steps2B_sound i j a h.1) (steps2B_sound i j b h.2)
  | .seq a b, h => by
      simp only [steps2B, Bool.or_eq_true, Bool.and_eq_true] at h
      rcases h with ((⟨⟨ha, hbi⟩, hbj⟩ | ⟨⟨⟨hai, haj⟩, hc⟩, hb⟩) | ⟨h1, h2⟩) | ⟨h1, h2⟩
      · exact steps2_seq_left (steps2B_sound i j a ha) (keepsB_sound i b hbi)
          (keepsB_sound j b hbj)
      · exact steps2_seq_right (keepsB_sound i a hai) (keepsB_sound j a haj) (noContB_sound a hc)
          (steps2B_sound i j b hb)
      · exact steps2_left (stepsB_sound i true _ h1) (keepsB_sound j _ h2)
      · exact steps2_right (stepsB_sound j true _ h1) (keepsB_sound i _ h2)
  | .dec n _ _ b, h => by
      simp only [steps2B, Bool.and_eq_true, decide_eq_true_eq] at h
      exact steps2_dec h.1.1 h.1.2 (steps2B_sound i j b h.2)
  | .decCall rn _ _ _ k, h => by
      simp only [steps2B, Bool.and_eq_true, decide_eq_true_eq] at h
      exact steps2_decCall h.1.1 h.1.2 (steps2B_sound i j k h.2)
  | .skip, h | .break, h | .continue, h | .annot _ _, h | .tick, h => steps2B_base h
  | .assign _ _ _, h | .primitive _ _ _, h | .store _ _, h | .store32 _ _, h =>
      steps2B_base (by unfold steps2B at h; exact h)
  | .storeByte _ _, h | .extCall _ _ _ _ _, h | .raise _ _, h | .return _, h =>
      steps2B_base (by unfold steps2B at h; exact h)
  | .shMemLoad _ _ _ _, h | .shMemStore _ _ _, h | .while _ _, h | .call _ _ _, h =>
      steps2B_base (by unfold steps2B at h; exact h)

/-! ## Signed keys -/

theorem signedKey_lt_of_less {a b : BitVec width}
    (h : Compiler.Encoders.Asm.holAsmSignedLess a b = true) : signedKey a < signedKey b := by
  have hw : width ≠ 0 := NeZero.ne width
  have hN : 2 ^ width = 2 * 2 ^ (width - 1) := by
    rw [← Nat.pow_succ']; congr 1; omega
  have ha := a.isLt
  have hb := b.isLt
  unfold signedKey
  unfold Compiler.Encoders.Asm.holAsmSignedLess at h
  simp only at h
  generalize hS : 2 ^ (width - 1) = S at h hN
  generalize hM : 2 ^ width = M at hN ha hb ⊢
  subst hN
  have hsub : ∀ x, 2 * S ≤ x → x < 4 * S → x % (2 * S) = x - 2 * S := by
    intro x h1 h2
    rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]
  split at h
  · split at h
    · simp only [decide_eq_true_eq] at h
      rw [Nat.mod_eq_of_lt (show a.toNat + S < 2 * S by omega),
        Nat.mod_eq_of_lt (show b.toNat + S < 2 * S by omega)]
      omega
    · simp at h
  · split at h
    · rw [hsub (a.toNat + S) (by omega) (by omega),
        Nat.mod_eq_of_lt (show b.toNat + S < 2 * S by omega)]
      omega
    · simp only [decide_eq_true_eq] at h
      rw [hsub (a.toNat + S) (by omega) (by omega), hsub (b.toNat + S) (by omega) (by omega)]
      omega

theorem condTrue_less_vars {s : PanSemStateFiniteExact width σ} {x y : MlS}
    (h : CondTrue s (.cmp .less (.var .local x) (.var .local y))) :
    ∃ vx vy, s.locals.lookup x = some (.val (.word vx)) ∧
      s.locals.lookup y = some (.val (.word vy)) ∧
      Compiler.Encoders.Asm.holAsmSignedLess vx vy = true := by
  obtain ⟨vx, hx, hc⟩ := (condB1_iff s .less x y).mp h
  cases hy : wordLocal s y with
  | none => rw [hy] at hc; cases hc
  | some vy =>
    rw [hy] at hc
    exact ⟨vx, vy, hx, wordLocal_eq_some hy, hc⟩

/-! ## Costs from entry states -/

/-- Cost of `p` from states in context `X` that satisfy `P`. -/
def CostE (σ : Type) (X : Ctx width) (P : PanSemStateFiniteExact width σ → Prop)
    (p : ProgHOL width) (B : Nat) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, InCtx s X → P s →
    Good (evaluateHOLFiniteState s p).1 →
    s.clock ≤ (evaluateHOLFiniteState s p).2.clock + B ∧
      InCtx (evaluateHOLFiniteState s p).2 X

theorem costE_seq {P : PanSemStateFiniteExact width σ → Prop} {a b : ProgHOL width} {A Bb : Nat}
    (ha : CostE σ X P a A) (hb : Cost σ X b Bb) : CostE σ X P (.seq a b) (A + Bb) := by
  intro s hs hP hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.seq a b)] at hto ⊢
  dsimp only at hto ⊢
  cases h1 : (evaluateHOLFiniteState s a).1 with
  | none =>
      simp only [h1] at hto ⊢
      have ha' := ha s hs hP (by rw [h1]; exact good_none)
      have hb' := hb _ ha'.2 hto
      exact ⟨by omega, hb'.2⟩
  | some r =>
      simp only [h1] at hto ⊢
      have ha' := ha s hs hP (by rw [h1]; exact hto)
      exact ⟨by omega, ha'.2⟩

/-- A declaration that keeps the entry fact. -/
theorem costE_dec_keep {P : PanSemStateFiniteExact width σ → Prop} {k : MlS} {sh : ShapeHOL}
    {e : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (hP : ∀ s v, P s → P (setVarHOLFinite k v s)) (hb : CostE σ X P body B) :
    CostE σ X P (.dec k sh e body) B := by
  intro s hs hPs hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec k sh e body)]
  dsimp only
  split
  · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  · split
    · intro hto
      obtain ⟨h1, h2⟩ := hb (setVarHOLFinite k _ s) hs (hP s _ hPs) hto
      exact ⟨by simpa [setVarHOLFinite] using h1, h2⟩
    · intro _; exact ⟨by (try dsimp only); omega, hs⟩

/-- `var j = m; body` establishes `j = m` for `body`. -/
theorem cost_dec_eqvar {j m : MlS} {sh : ShapeHOL} {body : ProgHOL width} {B : Nat}
    (hb : CostE σ X (fun s => s.locals.lookup j = s.locals.lookup m) body B) :
    Cost σ X (.dec j sh (.var .local m) body) B := by
  intro s hs hto
  revert hto
  rw [evaluateHOLFiniteState_eq_evaluate_def s (.dec j sh (.var .local m) body)]
  dsimp only
  split
  · intro _; exact ⟨by (try dsimp only); omega, hs⟩
  · rename_i v hv
    split
    · intro hto
      have hm : s.locals.lookup m = some v := by
        simpa [evalHOLExact] using hv
      have hP : (setVarHOLFinite j v s).locals.lookup j =
          (setVarHOLFinite j v s).locals.lookup m := by
        rw [lookup_setVar_eq, lookup_setVar_eq, if_pos rfl]
        split
        · rfl
        · exact hm.symm
      obtain ⟨h1, h2⟩ := hb (setVarHOLFinite j v s) hs hP hto
      exact ⟨by simpa [setVarHOLFinite] using h1, h2⟩
    · intro _; exact ⟨by (try dsimp only); omega, hs⟩

/-! ## The merge loop -/

/-- `(i < m) && (j < r)` as Pancake compiles it. -/
def mergeGuard (i j m r : MlS) : ExpHOL width :=
  .op .and [.cmp .notEqual (.const 0) (.cmp .less (.var .local i) (.var .local m)),
    .cmp .notEqual (.const 0) (.cmp .less (.var .local j) (.var .local r))]

theorem mergeGuard_true {s : PanSemStateFiniteExact width σ} {i j m r : MlS}
    (h : CondTrue s (mergeGuard i j m r)) :
    ∃ vi vj vm vr, s.locals.lookup i = some (.val (.word vi)) ∧
      s.locals.lookup j = some (.val (.word vj)) ∧ s.locals.lookup m = some (.val (.word vm)) ∧
      s.locals.lookup r = some (.val (.word vr)) ∧
      Compiler.Encoders.Asm.holAsmSignedLess vi vm = true ∧
      Compiler.Encoders.Asm.holAsmSignedLess vj vr = true := by
  obtain ⟨h1, h2⟩ := condTrue_and h
  obtain ⟨vi, vm, hi, hm, him⟩ := condTrue_less_vars (condTrue_ne0 h1)
  obtain ⟨vj, vr, hj, hr, hjr⟩ := condTrue_less_vars (condTrue_ne0 h2)
  exact ⟨vi, vj, vm, vr, hi, hj, hm, hr, him, hjr⟩

/-- From an entry state with `j = m`, the merge loop makes at most `2 ^ width`
iterations: `(m - i) + (r - j)` (signed keys) starts below `2 ^ width` and drops by one per
iteration. -/
theorem cost_while_merge_entry {i j m r : MlS} {body : ProgHOL width} {B : Nat}
    (hb : Cost σ X body B) (hs : Steps2 σ i j body) (hkm : Keeps σ m body)
    (hkr : Keeps σ r body) :
    CostE σ X (fun s => s.locals.lookup j = s.locals.lookup m)
      (.while (mergeGuard i j m r) body) ((2 ^ width + 1) * (B + 1)) := by
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match wordLocal s i, wordLocal s j, wordLocal s m, wordLocal s r with
    | some vi, some vj, some vm, some vr =>
        (signedKey vm - signedKey vi) + (signedKey vr - signedKey vj)
    | _, _, _, _ => 0
  have hdec : ∀ s : PanSemStateFiniteExact width σ, InCtx s X →
      CondTrue s (mergeGuard i j m r) → 0 < s.clock →
      ((evaluateHOLFiniteState (decClockHOLFinite s) body).1 = none ∨
        (evaluateHOLFiniteState (decClockHOLFinite s) body).1 = some .continue) →
      μ (evaluateHOLFiniteState (decClockHOLFinite s) body).2 < μ s := by
    intro s _ hc _ hexit
    obtain ⟨vi, vj, vm, vr, hi, hj, hm, hr, him, hjr⟩ := mergeGuard_true hc
    have hx : LoopExit (evaluateHOLFiniteState (decClockHOLFinite s) body).1 := by
      rcases hexit with h | h <;> simp [LoopExit, h]
    have hm' := (hkm _ hx).trans (show (decClockHOLFinite s).locals.lookup m = _ from hm)
    have hr' := (hkr _ hx).trans (show (decClockHOLFinite s).locals.lookup r = _ from hr)
    have hlt1 := signedKey_lt_of_less him
    have hlt2 := signedKey_lt_of_less hjr
    have hμs : μ s = (signedKey vm - signedKey vi) + (signedKey vr - signedKey vj) := by
      simp only [μ, wordLocal, hi, hj, hm, hr]
    rw [hμs]
    rcases hs (decClockHOLFinite s) vi vj hi hj hexit with ⟨hi', hj'⟩ | ⟨hi', hj'⟩
    · simp only [μ, wordLocal, hi', hj', hm', hr']
      rw [signedKey_succ him]
      omega
    · simp only [μ, wordLocal, hi', hj', hm', hr']
      rw [signedKey_succ hjr]
      omega
  intro s hs hjm hg
  refine cost_while_aux μ hb hdec (2 ^ width + 1) s hs ?_ hg
  intro hc
  obtain ⟨vi, vj, vm, vr, hi, hj, hm, hr, him, hjr⟩ := mergeGuard_true hc
  have hvj : vj = vm := by
    rw [hj, hm] at hjm
    simpa using hjm
  subst hvj
  have hlt1 := signedKey_lt_of_less him
  have hlt2 := signedKey_lt_of_less hjr
  have hk := signedKey_lt vr
  simp only [μ, wordLocal, hi, hj, hm, hr]
  omega

/-! ## The `sort_elems` statement shape -/

/-- `var j = m; var k = e; while (i < m) && (j < r) { b }; rest`: `b` steps one of `i`, `j`
and keeps `m`, `r`; `k` is neither `j` nor `m`. -/
def decMergeOk (j m k : MlS) (c : ExpHOL width) (b : ProgHOL width) : Bool :=
  match c with
  | .op .and [.cmp .notEqual (.const z1) (.cmp .less (.var .local i) (.var .local m')),
      .cmp .notEqual (.const z2) (.cmp .less (.var .local j') (.var .local r))] =>
      decide (z1 = 0) && decide (z2 = 0) && decide (m' = m) && decide (j' = j) &&
        decide (k ≠ j) && decide (k ≠ m) && steps2B i j b && keepsB m b && keepsB r b
  | _ => false

theorem cost_dec_merge {j m k : MlS} {sh sh' : ShapeHOL} {e : ExpHOL width} {c : ExpHOL width}
    {b rest : ProgHOL width} {B R : Nat} (h : decMergeOk j m k c b = true)
    (hb : Cost σ X b B) (hr : Cost σ X rest R) :
    Cost σ X (.dec j sh (.var .local m) (.dec k sh' e (.seq (.while c b) rest)))
      ((2 ^ width + 1) * (B + 1) + R) := by
  unfold decMergeOk at h
  split at h
  · rename_i z1 i m' z2 j' r
    simp only [Bool.and_eq_true, decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨⟨⟨⟨⟨rfl, rfl⟩, rfl⟩, rfl⟩, hkj⟩, hkm⟩, hs⟩, hm⟩, hr'⟩ := h
    refine cost_dec_eqvar (costE_dec_keep ?_ (costE_seq ?_ hr))
    · intro s v hP
      simp only [lookup_setVar_eq, if_neg (Ne.symm hkj), if_neg (Ne.symm hkm)]
      exact hP
    · exact cost_while_merge_entry hb (steps2B_sound _ _ b hs) (keepsB_sound _ b hm)
        (keepsB_sound _ b hr')
  · cases h

end InitECandidate.Solver.SourceCost
