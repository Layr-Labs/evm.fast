import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S012
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_secp256k1_address_of_point := (declPair Guest.Software.guestFn_secp256k1_address_of_point).2.2
def b_secp256k1_address_of_point : Nat := 633825300796644232231519256840
theorem cost_secp256k1_address_of_point : Cost σ guestCtx body_secp256k1_address_of_point b_secp256k1_address_of_point :=
 StrideCost.CoreNext.analyze_sound table12_sound (by cbv)
theorem cc_secp256k1_address_of_point : CalleeCost σ guestCtx (nm "secp256k1_address_of_point") b_secp256k1_address_of_point := by
 have hc : guestCode (nm "secp256k1_address_of_point") = some ((declPair Guest.Software.guestFn_secp256k1_address_of_point).2.1,body_secp256k1_address_of_point,(fnEntry Guest.Software.guestFn_secp256k1_address_of_point).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 179) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_secp256k1_address_of_point
def table13 := StrideCost.CoreNext.extend table12 (nm "secp256k1_address_of_point") b_secp256k1_address_of_point
theorem table13_sound : TblSound σ guestCtx table13 :=
 StrideCost.CoreNext.extend_sound table12_sound cc_secp256k1_address_of_point
#print axioms cc_secp256k1_address_of_point
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
