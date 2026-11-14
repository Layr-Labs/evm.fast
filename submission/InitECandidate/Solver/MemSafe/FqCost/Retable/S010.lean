import InitECandidate.Solver.MemSafe.FqCost.Retable.S009
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_calculate_blob_gas_price := (declPair Guest.Software.guestFn_calculate_blob_gas_price).2.2
def b_calculate_blob_gas_price : Nat := 1845354972104797038729527740129256583201025
theorem cost_calculate_blob_gas_price : Cost σ guestCtx body_calculate_blob_gas_price b_calculate_blob_gas_price := FqCost.CombCore.analyze_sound table9_sound (by cbv)
theorem cc_calculate_blob_gas_price : CalleeCost σ guestCtx (nm "calculate_blob_gas_price") b_calculate_blob_gas_price := by
 have hc : guestCode (nm "calculate_blob_gas_price") = some ((declPair Guest.Software.guestFn_calculate_blob_gas_price).2.1,body_calculate_blob_gas_price,(fnEntry Guest.Software.guestFn_calculate_blob_gas_price).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 233) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_calculate_blob_gas_price
def table10 := FqCost.CombCore.extend table9 (nm "calculate_blob_gas_price") b_calculate_blob_gas_price
theorem table10_sound : TblSound σ guestCtx table10 := FqCost.CombCore.extend_sound table9_sound cc_calculate_blob_gas_price
#print axioms cc_calculate_blob_gas_price
end InitECandidate.Solver.MemSafe.FqCost.Retable
