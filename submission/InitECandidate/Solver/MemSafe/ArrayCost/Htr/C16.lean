import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C15
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_payload := (declPair Guest.Software.guestFn_htr_payload).2.2
def b_htr_payload : Nat := 431359146862723288904884808799144659035894369312267109246603838364535
theorem cost_htr_payload : Cost σ guestCtx body_htr_payload b_htr_payload := ArrayCost.Core.analyze_sound table15_sound (by cbv)
theorem cc_htr_payload : CalleeCost σ guestCtx (nm "htr_payload") b_htr_payload := by
  have hc : ∃ rs, guestCode (nm "htr_payload") = some ((declPair Guest.Software.guestFn_htr_payload).2.1,body_htr_payload,rs) :=
    declPair_valid (List.getElem_mem (n := 210) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_payload
def table16 := ArrayCost.Core.extend table15 (nm "htr_payload") b_htr_payload
theorem table16_sound : TblSound σ guestCtx table16 := ArrayCost.Core.extend_sound table15_sound cc_htr_payload
#print axioms cc_htr_payload
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
