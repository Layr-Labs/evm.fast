import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S014
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_signing_hash_1559 := (declPair Guest.Software.guestFn_signing_hash_1559).2.2
def b_signing_hash_1559 : Nat := 12554203517541413952545602905813005643472764492307511641389
theorem cost_signing_hash_1559 : Cost σ guestCtx body_signing_hash_1559 b_signing_hash_1559 := FqCost.CombCore.analyze_sound table14_sound (by cbv)
theorem cc_signing_hash_1559 : CalleeCost σ guestCtx (nm "signing_hash_1559") b_signing_hash_1559 := by
 have hc : guestCode (nm "signing_hash_1559") = some ((declPair Guest.Software.guestFn_signing_hash_1559).2.1,body_signing_hash_1559,(fnEntry Guest.Software.guestFn_signing_hash_1559).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 335) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_signing_hash_1559
def table15 := FqCost.CombCore.extend table14 (nm "signing_hash_1559") b_signing_hash_1559
theorem table15_sound : TblSound σ guestCtx table15 := FqCost.CombCore.extend_sound table14_sound cc_signing_hash_1559
#print axioms cc_signing_hash_1559
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
