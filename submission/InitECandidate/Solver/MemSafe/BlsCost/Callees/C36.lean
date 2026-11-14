import InitECandidate.Solver.MemSafe.BlsCost.Callees.C35
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pair_doubling_step := (declPair Guest.Software.guestFn_pair_doubling_step).2.2
def b_pair_doubling_step : Nat := 137438955668
theorem cost_pair_doubling_step : Cost σ guestCtx body_pair_doubling_step b_pair_doubling_step := ConstCost.Core.analyze_sound table35_sound (by cbv)
theorem cc_pair_doubling_step : CalleeCost σ guestCtx (nm "pair_doubling_step") b_pair_doubling_step := by
  have hc : ∃ rs, guestCode (nm "pair_doubling_step") = some ((declPair Guest.Software.guestFn_pair_doubling_step).2.1,body_pair_doubling_step,rs) :=
    declPair_valid (List.getElem_mem (n := 782) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pair_doubling_step
def table36 := ConstCost.Core.extend table35 (nm "pair_doubling_step") b_pair_doubling_step
theorem table36_sound : TblSound σ guestCtx table36 := ConstCost.Core.extend_sound table35_sound cc_pair_doubling_step
#print axioms cc_pair_doubling_step
end InitECandidate.Solver.MemSafe.BlsCost.Callees
