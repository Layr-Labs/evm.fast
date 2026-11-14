import InitECandidate.Solver.MemSafe.FqCost.ModexpRetable.S009
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
variable {σ : Type}
def body_op_callcode := (declPair Guest.Software.guestFn_op_callcode).2.2
def b_op_callcode : Nat := 1633789241096754375869969229920714521816615
theorem cost_op_callcode : Cost σ guestCtx body_op_callcode b_op_callcode := FqCost.CombCore.analyze_sound table9_sound (by cbv)
theorem cc_op_callcode : CalleeCost σ guestCtx (nm "op_callcode") b_op_callcode := by
 have hc : guestCode (nm "op_callcode") = some ((declPair Guest.Software.guestFn_op_callcode).2.1,body_op_callcode,(fnEntry Guest.Software.guestFn_op_callcode).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 604) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_op_callcode
def table10 := FqCost.CombCore.extend table9 (nm "op_callcode") b_op_callcode
theorem table10_sound : TblSound σ guestCtx table10 := FqCost.CombCore.extend_sound table9_sound cc_op_callcode
#print axioms cc_op_callcode
end InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
