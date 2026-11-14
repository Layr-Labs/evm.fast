import InitECandidate.Solver.MemSafe.ArrayCost.Htr.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ArrayCost.Htr
variable {σ : Type}
def body_htr_deposit := (declPair Guest.Software.guestFn_htr_deposit).2.2
def b_htr_deposit : Nat := 2041694201525630781278309738016741000162
theorem cost_htr_deposit : Cost σ guestCtx body_htr_deposit b_htr_deposit := ArrayCost.Core.analyze_sound table9_sound (by cbv)
theorem cc_htr_deposit : CalleeCost σ guestCtx (nm "htr_deposit") b_htr_deposit := by
  have hc : ∃ rs, guestCode (nm "htr_deposit") = some ((declPair Guest.Software.guestFn_htr_deposit).2.1,body_htr_deposit,rs) :=
    declPair_valid (List.getElem_mem (n := 211) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ArrayCost.Core.callee_of_body hc cost_htr_deposit
def table10 := ArrayCost.Core.extend table9 (nm "htr_deposit") b_htr_deposit
theorem table10_sound : TblSound σ guestCtx table10 := ArrayCost.Core.extend_sound table9_sound cc_htr_deposit
#print axioms cc_htr_deposit
end InitECandidate.Solver.MemSafe.ArrayCost.Htr
