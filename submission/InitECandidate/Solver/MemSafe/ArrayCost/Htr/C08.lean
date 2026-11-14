import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_bytes_list := (declPair Guest.Software.guestFn_htr_bytes_list).2.2
def b_htr_bytes_list : Nat := 680564733841876927092769912488995062046
theorem cost_htr_bytes_list : Cost σ guestCtx body_htr_bytes_list b_htr_bytes_list := ArrayCost.Core.analyze_sound table7_sound (by cbv)
theorem cc_htr_bytes_list : CalleeCost σ guestCtx (nm "htr_bytes_list") b_htr_bytes_list := by
  have hc : ∃ rs, guestCode (nm "htr_bytes_list") = some ((declPair Guest.Software.guestFn_htr_bytes_list).2.1,body_htr_bytes_list,rs) :=
    declPair_valid (List.getElem_mem (n := 194) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_bytes_list
def table8 := ArrayCost.Core.extend table7 (nm "htr_bytes_list") b_htr_bytes_list
theorem table8_sound : TblSound σ guestCtx table8 := ArrayCost.Core.extend_sound table7_sound cc_htr_bytes_list
#print axioms cc_htr_bytes_list
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
