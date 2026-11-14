import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C19
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_new_payload_request := (declPair Guest.Software.guestFn_htr_new_payload_request).2.2
def b_htr_new_payload_request : Nat := 431359147954938990862167262032902810118024454530371689546170633322725
theorem cost_htr_new_payload_request : Cost σ guestCtx body_htr_new_payload_request b_htr_new_payload_request := ArrayCost.Core.analyze_sound table19_sound (by cbv)
theorem cc_htr_new_payload_request : CalleeCost σ guestCtx (nm "htr_new_payload_request") b_htr_new_payload_request := by
  have hc : ∃ rs, guestCode (nm "htr_new_payload_request") = some ((declPair Guest.Software.guestFn_htr_new_payload_request).2.1,body_htr_new_payload_request,rs) :=
    declPair_valid (List.getElem_mem (n := 218) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_new_payload_request
def table20 := ArrayCost.Core.extend table19 (nm "htr_new_payload_request") b_htr_new_payload_request
theorem table20_sound : TblSound σ guestCtx table20 := ArrayCost.Core.extend_sound table19_sound cc_htr_new_payload_request
#print axioms cc_htr_new_payload_request
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
