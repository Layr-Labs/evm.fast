import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C17
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_request_list := (declPair Guest.Software.guestFn_htr_request_list).2.2
def b_htr_request_list : Nat := 213421459003147146034049643312582897364048955232421354148776
theorem cost_htr_request_list : Cost σ guestCtx body_htr_request_list b_htr_request_list := ArrayCost.Core.analyze_sound table17_sound (by cbv)
theorem cc_htr_request_list : CalleeCost σ guestCtx (nm "htr_request_list") b_htr_request_list := by
  have hc : ∃ rs, guestCode (nm "htr_request_list") = some ((declPair Guest.Software.guestFn_htr_request_list).2.1,body_htr_request_list,rs) :=
    declPair_valid (List.getElem_mem (n := 216) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_request_list
def table18 := ArrayCost.Core.extend table17 (nm "htr_request_list") b_htr_request_list
theorem table18_sound : TblSound σ guestCtx table18 := ArrayCost.Core.extend_sound table17_sound cc_htr_request_list
#print axioms cc_htr_request_list
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
