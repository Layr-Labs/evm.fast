import InitECandidate.Solver.MemSafe.FqCost.Stride
import InitECandidate.Solver.Spec.Inv.HtabCode
set_option autoImplicit false
set_option maxHeartbeats 0
namespace InitECandidate.Solver.MemSafe.DelegationCost.Read
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
variable {width : Nat} [NeZero width] {σ : Type}
theorem dec_completes {s : PanSemStateFiniteExact width σ} {n : MlS} {sh : ShapeHOL}
 {e : ExpHOL width} {b : ProgHOL width} (hc : Completes s (.dec n sh e b)) :
 ∃ (inst : DecidablePred s.toExact.memaddrs) (v : ValueHOL width),
 @evalHOLExact width σ _ s.toExact inst e = some v ∧ Completes (setVarHOLFinite n v s) b := by
 unfold Completes at hc ⊢
 rw [evaluateHOLFiniteState_eq_evaluate_def] at hc
 dsimp only at hc
 split at hc
 · rcases hc with hc | hc <;> cases hc
 · rename_i v hv
   split at hc
   · exact ⟨_,v,hv,hc⟩
   · rcases hc with hc | hc <;> cases hc
#print axioms dec_completes
end InitECandidate.Solver.MemSafe.DelegationCost.Read
