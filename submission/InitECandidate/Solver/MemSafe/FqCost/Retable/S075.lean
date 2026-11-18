import InitECandidate.Solver.MemSafe.FqCost.Retable.S074
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_op_call := (declPair Guest.Software.guestFn_op_call).2.2
def b_op_call : Nat := 100001808013812986685321852692433951857726507242
theorem cost_op_call : Cost σ guestCtx body_op_call b_op_call := FqCost.CombCore.analyze_sound table74_sound (by cbv)
theorem cc_op_call : CalleeCost σ guestCtx (nm "op_call") b_op_call := by
 have hc : guestCode (nm "op_call") = some ((declPair Guest.Software.guestFn_op_call).2.1,body_op_call,(fnEntry Guest.Software.guestFn_op_call).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 603) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_op_call
def table75 := FqCost.CombCore.extend table74 (nm "op_call") b_op_call
theorem table75_sound : TblSound σ guestCtx table75 := FqCost.CombCore.extend_sound table74_sound cc_op_call
#print axioms cc_op_call
end InitECandidate.Solver.MemSafe.FqCost.Retable
