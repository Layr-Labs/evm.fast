import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C13
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_pcontainer := (declPair Guest.Software.guestFn_htr_pcontainer).2.2
def b_htr_pcontainer : Nat := 12554203470773361531414684892686860735392740484659808305446
theorem cost_htr_pcontainer : Cost σ guestCtx body_htr_pcontainer b_htr_pcontainer := ArrayCost.Core.analyze_sound table13_sound (by cbv)
theorem cc_htr_pcontainer : CalleeCost σ guestCtx (nm "htr_pcontainer") b_htr_pcontainer := by
  have hc : ∃ rs, guestCode (nm "htr_pcontainer") = some ((declPair Guest.Software.guestFn_htr_pcontainer).2.1,body_htr_pcontainer,rs) :=
    declPair_valid (List.getElem_mem (n := 191) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_pcontainer
def table14 := ArrayCost.Core.extend table13 (nm "htr_pcontainer") b_htr_pcontainer
theorem table14_sound : TblSound σ guestCtx table14 := ArrayCost.Core.extend_sound table13_sound cc_htr_pcontainer
#print axioms cc_htr_pcontainer
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
