import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C18
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_requests := (declPair Guest.Software.guestFn_htr_requests).2.2
def b_htr_requests : Nat := 1079661498486509091701662901455601347555637516646766579049337
theorem cost_htr_requests : Cost σ guestCtx body_htr_requests b_htr_requests := ArrayCost.Core.analyze_sound table18_sound (by cbv)
theorem cc_htr_requests : CalleeCost σ guestCtx (nm "htr_requests") b_htr_requests := by
  have hc : ∃ rs, guestCode (nm "htr_requests") = some ((declPair Guest.Software.guestFn_htr_requests).2.1,body_htr_requests,rs) :=
    declPair_valid (List.getElem_mem (n := 217) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_requests
def table19 := ArrayCost.Core.extend table18 (nm "htr_requests") b_htr_requests
theorem table19_sound : TblSound σ guestCtx table19 := ArrayCost.Core.extend_sound table18_sound cc_htr_requests
#print axioms cc_htr_requests
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
