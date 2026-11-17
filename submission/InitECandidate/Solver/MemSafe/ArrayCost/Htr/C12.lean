import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C11
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_plist_chunks := (declPair Guest.Software.guestFn_htr_plist_chunks).2.2
def b_htr_plist_chunks : Nat := 12554203470773361531414684892686860735374293740586098753828
theorem cost_htr_plist_chunks : Cost σ guestCtx body_htr_plist_chunks b_htr_plist_chunks := ArrayCost.Core.analyze_sound table11_sound (by cbv)
theorem cc_htr_plist_chunks : CalleeCost σ guestCtx (nm "htr_plist_chunks") b_htr_plist_chunks := by
  have hc : ∃ rs, guestCode (nm "htr_plist_chunks") = some ((declPair Guest.Software.guestFn_htr_plist_chunks).2.1,body_htr_plist_chunks,rs) :=
    declPair_valid (List.getElem_mem (n := 189) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_plist_chunks
def table12 := ArrayCost.Core.extend table11 (nm "htr_plist_chunks") b_htr_plist_chunks
theorem table12_sound : TblSound σ guestCtx table12 := ArrayCost.Core.extend_sound table11_sound cc_htr_plist_chunks
#print axioms cc_htr_plist_chunks
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
