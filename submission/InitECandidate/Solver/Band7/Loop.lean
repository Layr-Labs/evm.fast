import InitECandidate.Solver.Band6.Loop

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-!
# Unsigned counter loops under an invariant (Band7)

`costP_while_inc_lower`: `while (i <+ E) body` where `body` keeps an invariant `I`, never `continue`s and
steps `i` by one; the bound is `(2^64 + 1) * (B + 1)` for a body bound `B` under `I`.
-/

namespace InitECandidate.Solver.Band7
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {X : Ctx 64}

theorem costP_while_inc_lower {I : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B : Nat}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : Inv.CostP σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body B)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body
      (fun r t => r = none → I t))
    (hnc : NoCont σ body) (hs : Steps σ i (· + 1) body) :
    Inv.CostP σ X I (.while (.cmp .lower (.var .local i) E) body) ((2 ^ 64 + 1) * (B + 1)) := by
  refine Inv.costP_while (fun s => 2 ^ 64 - wordOf s i) (2 ^ 64) hclk (fun s => rfl) hbody ?_
    (fun s _ _ _ => Nat.sub_le _ _) ?_
  · intro s hs0 hp ht hr
    rcases hr with h | h
    · exact hinv s hs0 hp ht h
    · exact absurd h (hnc s)
  · intro k s hs0 ⟨hI, hcond, hk⟩ ht
    intro hexit
    obtain ⟨v, e, hv, hlt⟩ := cond_var_left hcond
    have hafter := hs s v hv hexit
    subst hk
    show 2 ^ 64 - wordOf _ i < 2 ^ 64 - wordOf s i
    unfold wordOf
    rw [hafter, hv]
    simp only [Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at hlt
    have he := e.isLt
    have hv1 : (v + 1).toNat = v.toNat + 1 := by
      have hpow : 1 < 2 ^ 64 := Nat.one_lt_two_pow (by decide)
      have h1 : (1 : BitVec 64).toNat = 1 := by
        simp [Nat.mod_eq_of_lt hpow]
      rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
    simp only [hv1]
    omega

/-- A true `i < c` against a constant exposes the counter word. -/
theorem cond_var_const {s : PanSemStateFiniteExact 64 σ} {i : MlS} {c : BitVec 64}
    (h : CondTrue s (.cmp .less (.var .local i) (.const c))) :
    ∃ v : BitVec 64, s.locals.lookup i = some (.val (.word v)) ∧
      Compiler.Encoders.Asm.wordCmpHOL .less v c = true := by
  obtain ⟨w, hw, hne⟩ := h
  simp only [evalHOLFinite, evalHOLExact] at hw
  split at hw
  · rename_i l r hl hr
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hr
    subst hr
    refine ⟨l, hl, ?_⟩
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
    cases hc : Compiler.Encoders.Asm.wordCmpHOL .less l c
    · rw [hc] at hw; simp at hw; exact absurd hw.symm hne
    · rfl
  · simp at hw

/-- `while (i < c) body` with a constant `c < 2^63`, a body that steps `i` by one, and an
entry state with `i <= c`: at most `c + 1` iterations. `I` need not mention `i`. -/
theorem costP_while_inc_const {I : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {c : BitVec 64}
    {body : ProgHOL 64} {B : Nat} (hc : c.toNat < 2 ^ 63)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : Inv.CostP σ X (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) (.const c))) body B)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s (.cmp .less (.var .local i) (.const c))) body
      (fun r t => r = none → I t))
    (hnc : NoCont σ body) (hs : Steps σ i (· + 1) body) :
    Inv.CostP σ X (fun s => I s ∧ ∃ w : BitVec 64, s.locals.lookup i = some (.val (.word w)) ∧
        w.toNat ≤ c.toNat)
      (.while (.cmp .less (.var .local i) (.const c)) body) ((c.toNat + 1) * (B + 1)) := by
  let μ : PanSemStateFiniteExact 64 σ → Nat := fun s =>
    match s.locals.lookup i with
    | some (.val (.word w)) => c.toNat - w.toNat
    | _ => 0
  -- one step: the counter after the body
  have key : ∀ s : PanSemStateFiniteExact 64 σ, CondTrue s (.cmp .less (.var .local i) (.const c)) →
      ∀ w : BitVec 64, s.locals.lookup i = some (.val (.word w)) → w.toNat ≤ c.toNat →
      w.toNat < c.toNat := by
    intro s hcond w hw hle
    obtain ⟨v, hv, hlt⟩ := cond_var_const hcond
    rw [hw] at hv
    simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hv
    subst hv
    simp only [Compiler.Encoders.Asm.wordCmpHOL, Compiler.Encoders.Asm.holAsmSignedLess] at hlt
    have h1 : w.toNat < 2 ^ (64 - 1) := by norm_num; omega
    have h2 : c.toNat < 2 ^ (64 - 1) := by norm_num; omega
    simp only [h1, h2, if_true, decide_eq_true_eq] at hlt
    exact hlt
  have hsucc : ∀ w : BitVec 64, w.toNat < c.toNat → (w + 1).toNat = w.toNat + 1 := by
    intro w hw
    have hpow : 1 < 2 ^ 64 := Nat.one_lt_two_pow (by decide)
    have h1 : (1 : BitVec 64).toNat = 1 := by
      simp [Nat.mod_eq_of_lt hpow]
    rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
  refine Inv.costP_while (I := fun s => I s ∧ ∃ w : BitVec 64, s.locals.lookup i = some (.val (.word w)) ∧
        w.toNat ≤ c.toNat) μ c.toNat (fun s ⟨h, w, hw, hle⟩ => ⟨hclk s h, w, hw, hle⟩)
    (fun s => rfl) (hbody.pre (fun s _ h => ⟨h.1.1, h.2⟩)) ?_ ?_ ?_
  · intro s hs0 hp ht hr
    rcases hr with h | h
    · refine ⟨hinv s hs0 ⟨hp.1.1, hp.2⟩ ht h, ?_⟩
      obtain ⟨w, hw, hle⟩ := hp.1.2
      have hlt := key s hp.2 w hw hle
      refine ⟨w + 1, ?_, by rw [hsucc w hlt]; omega⟩
      exact hs s w hw (Or.inl h)
    · exact absurd h (hnc s)
  · intro s _ hp _
    simp only [μ]
    split
    · exact Nat.sub_le _ _
    · exact Nat.zero_le _
  · intro k s hs0 ⟨⟨hI, w, hw, hle⟩, hcond, hk⟩ ht hexit
    have hlt := key s hcond w hw hle
    have hafter := hs s w hw (by rcases hexit with h | h; exact Or.inl h; exact Or.inr h)
    subst hk
    simp only [μ, hafter, hw, hsucc w hlt]
    omega

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.costP_while_inc_lower
#print axioms InitECandidate.Solver.Band7.costP_while_inc_const
