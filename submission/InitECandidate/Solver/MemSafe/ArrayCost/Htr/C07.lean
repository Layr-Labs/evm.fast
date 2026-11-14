import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_mix_in_length := (declPair Guest.Software.guestFn_mix_in_length).2.2
def b_mix_in_length : Nat := 137438953513
theorem cost_mix_in_length : Cost σ guestCtx body_mix_in_length b_mix_in_length := ArrayCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_mix_in_length : CalleeCost σ guestCtx (nm "mix_in_length") b_mix_in_length := by
  have hc : ∃ rs, guestCode (nm "mix_in_length") = some ((declPair Guest.Software.guestFn_mix_in_length).2.1,body_mix_in_length,rs) :=
    declPair_valid (List.getElem_mem (n := 187) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_mix_in_length
def table7 := ArrayCost.Core.extend table6 (nm "mix_in_length") b_mix_in_length
theorem table7_sound : TblSound σ guestCtx table7 := ArrayCost.Core.extend_sound table6_sound cc_mix_in_length
#print axioms cc_mix_in_length
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
