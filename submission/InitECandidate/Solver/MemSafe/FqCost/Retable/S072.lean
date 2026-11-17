import InitECandidate.Solver.MemSafe.FqCost.Retable.S071
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_op_create2 := (declPair Guest.Software.guestFn_op_create2).2.2
def b_op_create2 : Nat := 100002157824086379163557912777110658758567724078
theorem cost_op_create2 : Cost σ guestCtx body_op_create2 b_op_create2 := FqCost.CombCore.analyze_sound table71_sound (by cbv)
theorem cc_op_create2 : CalleeCost σ guestCtx (nm "op_create2") b_op_create2 := by
 have hc : guestCode (nm "op_create2") = some ((declPair Guest.Software.guestFn_op_create2).2.1,body_op_create2,(fnEntry Guest.Software.guestFn_op_create2).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 600) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_op_create2
def table72 := FqCost.CombCore.extend table71 (nm "op_create2") b_op_create2
theorem table72_sound : TblSound σ guestCtx table72 := FqCost.CombCore.extend_sound table71_sound cc_op_create2
#print axioms cc_op_create2
end InitECandidate.Solver.MemSafe.FqCost.Retable
