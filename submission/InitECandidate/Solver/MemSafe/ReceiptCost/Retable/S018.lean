import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S017
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_signature_recovery_parameters := (declPair Guest.Software.guestFn_signature_recovery_parameters).2.2
def b_signature_recovery_parameters : Nat := 75325221105248483715273617434878033860836586953845069848351
theorem cost_signature_recovery_parameters : Cost σ guestCtx body_signature_recovery_parameters b_signature_recovery_parameters := FqCost.CombCore.analyze_sound table17_sound (by cbv)
theorem cc_signature_recovery_parameters : CalleeCost σ guestCtx (nm "signature_recovery_parameters") b_signature_recovery_parameters := by
 have hc : guestCode (nm "signature_recovery_parameters") = some ((declPair Guest.Software.guestFn_signature_recovery_parameters).2.1,body_signature_recovery_parameters,(fnEntry Guest.Software.guestFn_signature_recovery_parameters).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 339) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_signature_recovery_parameters
def table18 := FqCost.CombCore.extend table17 (nm "signature_recovery_parameters") b_signature_recovery_parameters
theorem table18_sound : TblSound σ guestCtx table18 := FqCost.CombCore.extend_sound table17_sound cc_signature_recovery_parameters
#print axioms cc_signature_recovery_parameters
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
