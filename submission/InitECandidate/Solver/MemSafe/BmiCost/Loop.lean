import InitECandidate.Solver.Band7.Loop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BmiCost.Loop
variable {σ : Type} {X : Ctx 64}
theorem bounded {I : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B M : Nat} (hM : M < 2^64)
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : Inv.CostP σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body B)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body
      (fun r t => r = none → I t))
    (hbound : ∀ s, InCtx s X → I s → CondTrue s (.cmp .lower (.var .local i) E) → InitECandidate.Solver.SourceCost.wordOf s i < M)
    (hnc : NoCont σ body) (hs : Steps σ i (· + 1) body) :
    Inv.CostP σ X I (.while (.cmp .lower (.var .local i) E) body) ((M + 1) * (B + 1)) := by
  refine Inv.costP_while (fun s => M - InitECandidate.Solver.SourceCost.wordOf s i) M hclk (fun s => rfl) hbody ?_
    (fun s _ _ _ => Nat.sub_le _ _) ?_
  · intro s hs0 hp ht hr
    rcases hr with h | h
    · exact hinv s hs0 hp ht h
    · exact absurd h (hnc s)
  · intro k s hs0 ⟨hI, hcond, hk⟩ ht
    intro hexit
    obtain ⟨v, e, hv, hlt⟩ := cond_var_left hcond
    have hvM : v.toNat < M := by simpa only [InitECandidate.Solver.SourceCost.wordOf,hv] using hbound s hs0 hI hcond
    have hafter := hs s v hv hexit
    subst hk
    show M - InitECandidate.Solver.SourceCost.wordOf _ i < M - InitECandidate.Solver.SourceCost.wordOf s i
    unfold InitECandidate.Solver.SourceCost.wordOf
    rw [hafter, hv]
    have hv1 : (v + 1).toNat = v.toNat + 1 := by
      have hpow : 1 < 2 ^ 64 := Nat.one_lt_two_pow (by decide)
      have h1 : (1 : BitVec 64).toNat = 1 := by
        simp [Nat.mod_eq_of_lt hpow]
      rw [BitVec.toNat_add, h1, Nat.mod_eq_of_lt (by omega)]
    simp only [hv1]
    omega

#print axioms bounded
end InitECandidate.Solver.MemSafe.BmiCost.Loop
