import InitECandidate.Solver.Spec.Inv.CostI
import InitECandidate.Solver.SourceCost.CounterLoops
import InitECandidate.Solver.MemSafe.Rec.SplitVar
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Unsigned
variable {σ : Type} {X : Ctx 64}
theorem bounded {I : PanSemStateFiniteExact 64 σ → Prop} {i : MlS} {E : ExpHOL 64}
    {body : ProgHOL 64} {B M : Nat}
    (hclk : ∀ s, I s → I (decClockHOLFinite s))
    (hbody : Inv.CostP σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body B)
    (hinv : Hoare σ X (fun s => I s ∧ CondTrue s (.cmp .lower (.var .local i) E)) body
      (fun r t => r = none → I t))
    (hnc : NoCont σ body) (hstep : Steps σ i (· + 1) body)
    (hguard : ∀ s, InCtx s X → I s → ∃ C : BitVec 64,
      ev s E = some (.val (.word C)) ∧ C.toNat ≤ M) :
    Inv.CostP σ X I (.while (.cmp .lower (.var .local i) E) body) ((M+1)*(B+1)) := by
  refine Inv.costP_while (fun s => M - InitECandidate.Solver.SourceCost.wordOf s i) M hclk (fun s => rfl) hbody ?_
    (fun s _ _ _ => Nat.sub_le _ _) ?_
  · intro s hs hp ht hr
    rcases hr with h | h
    · exact hinv s hs hp ht h
    · exact absurd h (hnc s)
  · intro k s hs ⟨hI,hc,hk⟩ ht hexit
    obtain ⟨C,hC,hCM⟩ := hguard s hs hI
    obtain ⟨v,e,hv,hlt0⟩ := cond_var_left hc
    have hcmp := InitECandidate.Solver.MemSafe.Rec.cmp_true
      (show ev s (.var .local i) = some (.val (.word v)) from hv) hC hc
    simp only [Compiler.Encoders.Asm.wordCmpHOL, decide_eq_true_eq, BitVec.lt_def] at hcmp
    have hafter := hstep s v hv hexit
    have hv1 : (v + 1).toNat = v.toNat + 1 := by
      have hcmax := C.isLt
      have h1 : (1 : BitVec 64).toNat = 1 := by decide
      rw [BitVec.toNat_add,h1,Nat.mod_eq_of_lt (by omega)]
    show M - InitECandidate.Solver.SourceCost.wordOf _ i < k
    unfold InitECandidate.Solver.SourceCost.wordOf
    rw [hafter]
    simp only [hv1]
    simp only [InitECandidate.Solver.SourceCost.wordOf,hv] at hk
    omega
#print axioms bounded
end InitECandidate.Solver.MemSafe.CryptoCost.Unsigned
