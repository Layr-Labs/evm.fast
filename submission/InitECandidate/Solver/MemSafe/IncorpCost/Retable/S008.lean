import InitECandidate.Solver.MemSafe.IncorpCost.Retable.S007
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.IncorpCost.Retable
variable {σ : Type}
def body_get_pre_tx_account := (declPair Guest.Software.guestFn_get_pre_tx_account).2.2
def b_get_pre_tx_account : Nat := 330222982341023458544397200726820
theorem cost_get_pre_tx_account : Cost σ guestCtx body_get_pre_tx_account b_get_pre_tx_account := FqCost.CombCore.analyze_sound table7_sound (by cbv)
theorem cc_get_pre_tx_account : CalleeCost σ guestCtx (nm "get_pre_tx_account") b_get_pre_tx_account := by
 have hc : guestCode (nm "get_pre_tx_account") = some ((declPair Guest.Software.guestFn_get_pre_tx_account).2.1,body_get_pre_tx_account,(fnEntry Guest.Software.guestFn_get_pre_tx_account).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 420) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_get_pre_tx_account
def table8 := FqCost.CombCore.extend table7 (nm "get_pre_tx_account") b_get_pre_tx_account
theorem table8_sound : TblSound σ guestCtx table8 := FqCost.CombCore.extend_sound table7_sound cc_get_pre_tx_account
#print axioms cc_get_pre_tx_account
end InitECandidate.Solver.MemSafe.IncorpCost.Retable
