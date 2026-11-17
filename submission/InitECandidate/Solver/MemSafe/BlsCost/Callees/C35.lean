import InitECandidate.Solver.MemSafe.BlsCost.Callees.C34
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pair_addition_step := (declPair Guest.Software.guestFn_pair_addition_step).2.2
def b_pair_addition_step : Nat := 137438956620
theorem cost_pair_addition_step : Cost σ guestCtx body_pair_addition_step b_pair_addition_step := ConstCost.Core.analyze_sound table34_sound (by cbv)
theorem cc_pair_addition_step : CalleeCost σ guestCtx (nm "pair_addition_step") b_pair_addition_step := by
  have hc : ∃ rs, guestCode (nm "pair_addition_step") = some ((declPair Guest.Software.guestFn_pair_addition_step).2.1,body_pair_addition_step,rs) :=
    declPair_valid (List.getElem_mem (n := 783) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pair_addition_step
def table35 := ConstCost.Core.extend table34 (nm "pair_addition_step") b_pair_addition_step
theorem table35_sound : TblSound σ guestCtx table35 := ConstCost.Core.extend_sound table34_sound cc_pair_addition_step
#print axioms cc_pair_addition_step
end InitECandidate.Solver.MemSafe.BlsCost.Callees
