import InitECandidate.Solver.MemSafe.FqCost.Retable.S066
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_set_retdata := (declPair Guest.Software.guestFn_set_retdata).2.2
def b_set_retdata : Nat := 137438953512
theorem cost_set_retdata : Cost σ guestCtx body_set_retdata b_set_retdata := FqCost.CombCore.analyze_sound table66_sound (by cbv)
theorem cc_set_retdata : CalleeCost σ guestCtx (nm "set_retdata") b_set_retdata := by
 have hc : guestCode (nm "set_retdata") = some ((declPair Guest.Software.guestFn_set_retdata).2.1,body_set_retdata,(fnEntry Guest.Software.guestFn_set_retdata).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 595) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_set_retdata
def table67 := FqCost.CombCore.extend table66 (nm "set_retdata") b_set_retdata
theorem table67_sound : TblSound σ guestCtx table67 := FqCost.CombCore.extend_sound table66_sound cc_set_retdata
#print axioms cc_set_retdata
end InitECandidate.Solver.MemSafe.FqCost.Retable
