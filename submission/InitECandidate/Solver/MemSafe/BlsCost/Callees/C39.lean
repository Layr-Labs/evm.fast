import InitECandidate.Solver.MemSafe.BlsCost.Callees.C38
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pair_accumulate := (declPair Guest.Software.guestFn_pair_accumulate).2.2
def b_pair_accumulate : Nat := 38029518498821546494170823492791
theorem cost_pair_accumulate : Cost σ guestCtx body_pair_accumulate b_pair_accumulate := ConstCost.Core.analyze_sound table38_sound (by cbv)
theorem cc_pair_accumulate : CalleeCost σ guestCtx (nm "pair_accumulate") b_pair_accumulate := by
  have hc : ∃ rs, guestCode (nm "pair_accumulate") = some ((declPair Guest.Software.guestFn_pair_accumulate).2.1,body_pair_accumulate,rs) :=
    declPair_valid (List.getElem_mem (n := 786) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pair_accumulate
def table39 := ConstCost.Core.extend table38 (nm "pair_accumulate") b_pair_accumulate
theorem table39_sound : TblSound σ guestCtx table39 := ConstCost.Core.extend_sound table38_sound cc_pair_accumulate
#print axioms cc_pair_accumulate
end InitECandidate.Solver.MemSafe.BlsCost.Callees
