import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S038
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_modify_state_commit := (declPair Guest.Software.guestFn_modify_state_commit).2.2
def b_modify_state_commit : Nat := 43100120419823970282962335828102
theorem cost_modify_state_commit : Cost σ guestCtx body_modify_state_commit b_modify_state_commit := FqCost.CombCore.analyze_sound table38_sound (by cbv)
theorem cc_modify_state_commit : CalleeCost σ guestCtx (nm "modify_state_commit") b_modify_state_commit := by
 have hc : guestCode (nm "modify_state_commit") = some ((declPair Guest.Software.guestFn_modify_state_commit).2.1,body_modify_state_commit,(fnEntry Guest.Software.guestFn_modify_state_commit).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 391) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_modify_state_commit
def table39 := FqCost.CombCore.extend table38 (nm "modify_state_commit") b_modify_state_commit
theorem table39_sound : TblSound σ guestCtx table39 := FqCost.CombCore.extend_sound table38_sound cc_modify_state_commit
#print axioms cc_modify_state_commit
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
