import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S006
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_tx_put_access_list := (declPair Guest.Software.guestFn_tx_put_access_list).2.2
def b_tx_put_access_list : Nat := 12554203517541413941656567151032643501043443043314419368056
theorem cost_tx_put_access_list : Cost σ guestCtx body_tx_put_access_list b_tx_put_access_list := FqCost.CombCore.analyze_sound table6_sound (by cbv)
theorem cc_tx_put_access_list : CalleeCost σ guestCtx (nm "tx_put_access_list") b_tx_put_access_list := by
 have hc : guestCode (nm "tx_put_access_list") = some ((declPair Guest.Software.guestFn_tx_put_access_list).2.1,body_tx_put_access_list,(fnEntry Guest.Software.guestFn_tx_put_access_list).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 322) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_tx_put_access_list
def table7 := FqCost.CombCore.extend table6 (nm "tx_put_access_list") b_tx_put_access_list
theorem table7_sound : TblSound σ guestCtx table7 := FqCost.CombCore.extend_sound table6_sound cc_tx_put_access_list
#print axioms cc_tx_put_access_list
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
