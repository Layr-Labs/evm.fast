import InitECandidate.Solver.MemSafe.FqCost.Retable.S070
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_compute_create2_contract_address := (declPair Guest.Software.guestFn_compute_create2_contract_address).2.2
def b_compute_create2_contract_address : Nat := 1267650601593288464600477467187
theorem cost_compute_create2_contract_address : Cost σ guestCtx body_compute_create2_contract_address b_compute_create2_contract_address := FqCost.CombCore.analyze_sound table70_sound (by cbv)
theorem cc_compute_create2_contract_address : CalleeCost σ guestCtx (nm "compute_create2_contract_address") b_compute_create2_contract_address := by
 have hc : guestCode (nm "compute_create2_contract_address") = some ((declPair Guest.Software.guestFn_compute_create2_contract_address).2.1,body_compute_create2_contract_address,(fnEntry Guest.Software.guestFn_compute_create2_contract_address).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 597) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_compute_create2_contract_address
def table71 := FqCost.CombCore.extend table70 (nm "compute_create2_contract_address") b_compute_create2_contract_address
theorem table71_sound : TblSound σ guestCtx table71 := FqCost.CombCore.extend_sound table70_sound cc_compute_create2_contract_address
#print axioms cc_compute_create2_contract_address
end InitECandidate.Solver.MemSafe.FqCost.Retable
