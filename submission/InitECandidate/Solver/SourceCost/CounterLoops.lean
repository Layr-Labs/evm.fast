import InitECandidate.Solver.SourceCost.Steps

/-!
# Generic counter loops

Measure-rule instances for `while (i <u E)`, `while (i <s E)` with `i += 1`, and for
conditions forcing `i ≠ 0` with `i -= 1`. `E` is arbitrary: it may read memory or
change between iterations, because the measure depends on `i` alone.
-/

namespace InitECandidate.Solver.SourceCost
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}

/-- A true `cmp` condition with a local variable on the left exposes both words. -/
theorem cond_var_left {s : PanSemStateFiniteExact width σ} {op : Cmp} {i : MlS} {E : ExpHOL width}
    (h : CondTrue s (.cmp op (.var .local i) E)) :
    ∃ v e : BitVec width, s.locals.lookup i = some (.val (.word v)) ∧
      Compiler.Encoders.Asm.wordCmpHOL op v e = true := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨l, r, hl, ?_⟩
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    cases hc : Compiler.Encoders.Asm.wordCmpHOL op l r
    · rw [hc] at hw; simp at hw; exact absurd hw.symm hne
    · rfl
  · simp at hw

theorem cond_var_right {s : PanSemStateFiniteExact width σ} {op : Cmp} {i : MlS} {E : ExpHOL width}
    (h : CondTrue s (.cmp op E (.var .local i))) :
    ∃ v e : BitVec width, s.locals.lookup i = some (.val (.word v)) ∧
      Compiler.Encoders.Asm.wordCmpHOL op e v = true := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨r, l, hr, ?_⟩
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    cases hc : Compiler.Encoders.Asm.wordCmpHOL op l r
    · rw [hc] at hw; simp at hw; exact absurd hw.symm hne
    · rfl
  · simp at hw

/-- `while (i <u E) { ... i = i + 1 ... }`. -/
theorem cost_while_inc_lower {i : MlS} {E : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body) :
    Cost σ X (.while (.cmp .lower (.var .local i) E) body) ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while (fun s => 2 ^ width - wordOf s i) (2 ^ width) hb
    (fun s _ _ => Nat.sub_le _ _) ?_
  intro s _ hcond _ hexit
  obtain ⟨v, e, hv, hlt⟩ := cond_var_left hcond
  have hv' : (decClockHOLFinite s).locals.lookup i = some (.val (.word v)) := hv
  have hafter := hs _ v hv' hexit
  show 2 ^ width - wordOf _ i < 2 ^ width - wordOf s i
  unfold wordOf
  rw [hafter, hv]
  simp only [Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at hlt
  have he := e.isLt
  have hv1 : (v + 1).toNat = v.toNat + 1 := by
    have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
    have h1 : (1 : BitVec width).toNat = 1 := by
      simp [Nat.mod_eq_of_lt hpow]
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  simp only [hv1]
  omega

/-- Conditions of a countdown loop that force the counter to be nonzero. -/
def NonzeroCond (σ : Type) (i : MlS) (c : ExpHOL width) : Prop :=
  ∀ s : PanSemStateFiniteExact width σ, CondTrue s c →
    ∃ v : BitVec width, s.locals.lookup i = some (.val (.word v)) ∧ v ≠ 0

theorem nonzero_less_zero (i : MlS) :
    NonzeroCond σ i (.cmp .less (.const 0) (.var .local i) : ExpHOL width) :=
  fun _ h => countdown_cond h

theorem nonzero_lower_zero (i : MlS) :
    NonzeroCond σ i (.cmp .lower (.const 0) (.var .local i) : ExpHOL width) := by
  intro s h
  obtain ⟨v, e, hv, hc⟩ := cond_var_right h
  refine ⟨v, hv, ?_⟩
  rintro rfl
  simp [Compiler.Encoders.Asm.wordCmpHOL] at hc

theorem nonzero_ne_zero_left (i : MlS) :
    NonzeroCond σ i (.cmp .notEqual (.var .local i) (.const 0) : ExpHOL width) := by
  intro s h
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨l, hl, ?_⟩
    rintro rfl
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hr hw
    subst hr
    simp [Compiler.Encoders.Asm.wordCmpHOL] at hw
    exact hne hw.symm
  · simp at hw

theorem nonzero_ne_zero_right (i : MlS) :
    NonzeroCond σ i (.cmp .notEqual (.const 0) (.var .local i) : ExpHOL width) := by
  intro s h
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    refine ⟨r, hr, ?_⟩
    rintro rfl
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hl hw
    subst hl
    simp [Compiler.Encoders.Asm.wordCmpHOL] at hw
    exact hne hw.symm
  · simp at hw

/-- Countdown: a condition forcing `i ≠ 0` and a body that decrements `i` once. -/
theorem cost_while_dec {i : MlS} {c : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (hc : NonzeroCond σ i c) (hb : Cost σ X body B) (hs : Steps σ i (· - 1) body) :
    Cost σ X (.while c body) ((2 ^ width + 1) * (B + 1)) := by
  refine cost_while (fun s => wordOf s i) (2 ^ width) hb (fun s _ _ => wordOf_le s i) ?_
  intro s _ hcond _ hexit
  obtain ⟨v, hv, hv0⟩ := hc s hcond
  have hv' : (decClockHOLFinite s).locals.lookup i = some (.val (.word v)) := hv
  have hafter := hs _ v hv' hexit
  show wordOf _ i < wordOf s i
  unfold wordOf
  rw [hafter, hv]
  have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow (NeZero.ne width)
  have h1mod : 1 % 2 ^ width = 1 := Nat.mod_eq_of_lt hpow
  have hvn : v.toNat ≠ 0 := fun h => hv0 (BitVec.eq_of_toNat_eq (by simpa using h))
  have h1 : (1 : BitVec width) ≤ v := by
    rw [BitVec.le_def]
    simp [h1mod]; omega
  simp only []
  rw [BitVec.toNat_sub_of_le h1]
  simp [h1mod]; omega

/-- Signed order as unsigned order on the sign-flipped value. -/
def signedKey (v : BitVec width) : Nat := (v.toNat + 2 ^ (width - 1)) % 2 ^ width

theorem signedKey_lt (v : BitVec width) : signedKey v < 2 ^ width :=
  Nat.mod_lt _ (Nat.two_pow_pos _)

theorem signedKey_succ {v e : BitVec width}
    (h : Compiler.Encoders.Asm.holAsmSignedLess v e = true) :
    signedKey (v + 1) = signedKey v + 1 := by
  have hw : width ≠ 0 := NeZero.ne width
  have hN : 2 ^ width = 2 * 2 ^ (width - 1) := by
    rw [← Nat.pow_succ']; congr 1; omega
  have hpow : 1 < 2 ^ width := Nat.one_lt_two_pow hw
  have h1 : (1 : BitVec width).toNat = 1 := by simp [Nat.mod_eq_of_lt hpow]
  have hv := v.isLt
  have he := e.isLt
  unfold signedKey
  rw [BitVec.toNat_add, h1]
  unfold Compiler.Encoders.Asm.holAsmSignedLess at h
  simp only at h
  generalize hS : 2 ^ (width - 1) = S at h hN
  generalize hM : 2 ^ width = M at hN hv he hpow ⊢
  subst hN
  have hsub : ∀ a, 2 * S ≤ a → a < 4 * S → a % (2 * S) = a - 2 * S := by
    intro a h1 h2
    rw [Nat.mod_eq_sub_mod h1, Nat.mod_eq_of_lt (by omega)]
  split at h
  · split at h
    · simp only [decide_eq_true_eq] at h
      rw [Nat.mod_eq_of_lt (show v.toNat + 1 < 2 * S by omega),
        Nat.mod_eq_of_lt (show v.toNat + 1 + S < 2 * S by omega),
        Nat.mod_eq_of_lt (show v.toNat + S < 2 * S by omega)]
      omega
    · simp at h
  · by_cases hmax : v.toNat + 1 = 2 * S
    · rw [hmax, Nat.mod_self, Nat.zero_add, Nat.mod_eq_of_lt (show S < 2 * S by omega),
        hsub _ (by omega) (by omega)]
      omega
    · rw [Nat.mod_eq_of_lt (show v.toNat + 1 < 2 * S by omega),
        hsub (v.toNat + 1 + S) (by omega) (by omega), hsub (v.toNat + S) (by omega) (by omega)]
      omega

/-- `while (i <s E) { ... i = i + 1 ... }`. -/
theorem cost_while_inc_less {i : MlS} {E : ExpHOL width} {body : ProgHOL width} {B : Nat}
    (hb : Cost σ X body B) (hs : Steps σ i (· + 1) body) :
    Cost σ X (.while (.cmp .less (.var .local i) E) body) ((2 ^ width + 1) * (B + 1)) := by
  let μ : PanSemStateFiniteExact width σ → Nat := fun s =>
    match s.locals.lookup i with
    | some (.val (.word w)) => 2 ^ width - signedKey w
    | _ => 0
  refine cost_while μ (2 ^ width) hb ?_ ?_
  · intro s _ _
    simp only [μ]
    split
    · exact Nat.sub_le _ _
    · exact Nat.zero_le _
  · intro s _ hcond _ hexit
    obtain ⟨v, e, hv, hlt⟩ := cond_var_left hcond
    have hv' : (decClockHOLFinite s).locals.lookup i = some (.val (.word v)) := hv
    have hafter := hs _ v hv' hexit
    simp only [μ, hafter, hv]
    simp only [Compiler.Encoders.Asm.wordCmpHOL] at hlt
    rw [signedKey_succ hlt]
    have := signedKey_lt (v + 1)
    rw [signedKey_succ hlt] at this
    omega

end InitECandidate.Solver.SourceCost
