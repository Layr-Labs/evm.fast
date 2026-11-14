import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_pbytes := (declPair Guest.Software.guestFn_htr_pbytes).2.2
def b_htr_pbytes : Nat := 12554203470773361531414684892686860735374293740860976660853
theorem cost_htr_pbytes : Cost σ guestCtx body_htr_pbytes b_htr_pbytes := ArrayCost.Core.analyze_sound table12_sound (by cbv)
theorem cc_htr_pbytes : CalleeCost σ guestCtx (nm "htr_pbytes") b_htr_pbytes := by
  have hc : ∃ rs, guestCode (nm "htr_pbytes") = some ((declPair Guest.Software.guestFn_htr_pbytes).2.1,body_htr_pbytes,rs) :=
    declPair_valid (List.getElem_mem (n := 190) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_pbytes
def table13 := ArrayCost.Core.extend table12 (nm "htr_pbytes") b_htr_pbytes
theorem table13_sound : TblSound σ guestCtx table13 := ArrayCost.Core.extend_sound table12_sound cc_htr_pbytes
#print axioms cc_htr_pbytes
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
