import InitECandidate.Solver.MemSafe.ReceiptCost.Retable.S004
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReceiptCost.Retable
variable {σ : Type}
def body_tx_put_u256 := (declPair Guest.Software.guestFn_tx_put_u256).2.2
def b_tx_put_u256 : Nat := 73786976432277159993
theorem cost_tx_put_u256 : Cost σ guestCtx body_tx_put_u256 b_tx_put_u256 := FqCost.CombCore.analyze_sound table4_sound (by cbv)
theorem cc_tx_put_u256 : CalleeCost σ guestCtx (nm "tx_put_u256") b_tx_put_u256 := by
 have hc : guestCode (nm "tx_put_u256") = some ((declPair Guest.Software.guestFn_tx_put_u256).2.1,body_tx_put_u256,(fnEntry Guest.Software.guestFn_tx_put_u256).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 318) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_tx_put_u256
def table5 := FqCost.CombCore.extend table4 (nm "tx_put_u256") b_tx_put_u256
theorem table5_sound : TblSound σ guestCtx table5 := FqCost.CombCore.extend_sound table4_sound cc_tx_put_u256
#print axioms cc_tx_put_u256
end InitECandidate.Solver.MemSafe.ReceiptCost.Retable
