import InitECandidate.Solver.MemSafe.FqCost.Retable.S072
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_op_delegatecall := (declPair Guest.Software.guestFn_op_delegatecall).2.2
def b_op_delegatecall : Nat := 100001459564669146823429887246025889708756079493
theorem cost_op_delegatecall : Cost σ guestCtx body_op_delegatecall b_op_delegatecall := FqCost.CombCore.analyze_sound table72_sound (by cbv)
theorem cc_op_delegatecall : CalleeCost σ guestCtx (nm "op_delegatecall") b_op_delegatecall := by
 have hc : guestCode (nm "op_delegatecall") = some ((declPair Guest.Software.guestFn_op_delegatecall).2.1,body_op_delegatecall,(fnEntry Guest.Software.guestFn_op_delegatecall).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 605) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_op_delegatecall
def table73 := FqCost.CombCore.extend table72 (nm "op_delegatecall") b_op_delegatecall
theorem table73_sound : TblSound σ guestCtx table73 := FqCost.CombCore.extend_sound table72_sound cc_op_delegatecall
#print axioms cc_op_delegatecall
end InitECandidate.Solver.MemSafe.FqCost.Retable
