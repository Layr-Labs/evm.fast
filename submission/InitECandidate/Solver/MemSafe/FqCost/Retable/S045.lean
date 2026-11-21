import InitECandidate.Solver.MemSafe.FqCost.Retable.S044
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_ecp_mul := (declPair Guest.Software.guestFn_ecp_mul).2.2
def b_ecp_mul : Nat := 489590447981450517410355457468956
theorem cost_ecp_mul : Cost σ guestCtx body_ecp_mul b_ecp_mul := FqCost.CombCore.analyze_sound table44_sound (by cbv)
theorem cc_ecp_mul : CalleeCost σ guestCtx (nm "ecp_mul") b_ecp_mul := by
 have hc : guestCode (nm "ecp_mul") = some ((declPair Guest.Software.guestFn_ecp_mul).2.1,body_ecp_mul,(fnEntry Guest.Software.guestFn_ecp_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 675) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_ecp_mul
def table45 := FqCost.CombCore.extend table44 (nm "ecp_mul") b_ecp_mul
theorem table45_sound : TblSound σ guestCtx table45 := FqCost.CombCore.extend_sound table44_sound cc_ecp_mul
#print axioms cc_ecp_mul
end InitECandidate.Solver.MemSafe.FqCost.Retable
