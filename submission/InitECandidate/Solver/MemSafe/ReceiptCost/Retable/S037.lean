import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S036
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_destroy_storage := (declPair Guest.Software.guestFn_destroy_storage).2.2
def b_destroy_storage : Nat := 43100120419823970278083252978483
theorem cost_destroy_storage : Cost σ guestCtx body_destroy_storage b_destroy_storage := FqCost.CombCore.analyze_sound table36_sound (by cbv)
theorem cc_destroy_storage : CalleeCost σ guestCtx (nm "destroy_storage") b_destroy_storage := by
 have hc : guestCode (nm "destroy_storage") = some ((declPair Guest.Software.guestFn_destroy_storage).2.1,body_destroy_storage,(fnEntry Guest.Software.guestFn_destroy_storage).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 389) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_destroy_storage
def table37 := FqCost.CombCore.extend table36 (nm "destroy_storage") b_destroy_storage
theorem table37_sound : TblSound σ guestCtx table37 := FqCost.CombCore.extend_sound table36_sound cc_destroy_storage
#print axioms cc_destroy_storage
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
