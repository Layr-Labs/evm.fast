import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S015
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_calculate_blob_gas_price := (declPair Guest.Software.guestFn_calculate_blob_gas_price).2.2
def b_calculate_blob_gas_price : Nat := 1844674407371635726533841876929527740129256583201025
theorem cost_calculate_blob_gas_price : Cost σ guestCtx body_calculate_blob_gas_price b_calculate_blob_gas_price :=
 StrideCost.CoreNext.analyze_sound table15_sound (by cbv)
theorem cc_calculate_blob_gas_price : CalleeCost σ guestCtx (nm "calculate_blob_gas_price") b_calculate_blob_gas_price := by
 have hc : guestCode (nm "calculate_blob_gas_price") = some ((declPair Guest.Software.guestFn_calculate_blob_gas_price).2.1,body_calculate_blob_gas_price,(fnEntry Guest.Software.guestFn_calculate_blob_gas_price).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 233) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_calculate_blob_gas_price
def table16 := StrideCost.CoreNext.extend table15 (nm "calculate_blob_gas_price") b_calculate_blob_gas_price
theorem table16_sound : TblSound σ guestCtx table16 :=
 StrideCost.CoreNext.extend_sound table15_sound cc_calculate_blob_gas_price
#print axioms cc_calculate_blob_gas_price
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
