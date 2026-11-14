import InitECandidate.Solver.MemSafe.BlsCost.Callees.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g1_subgroup_check := (declPair Guest.Software.guestFn_g1_subgroup_check).2.2
def b_g1_subgroup_check : Nat := 5070602453855073098082981776275
theorem cost_g1_subgroup_check : Cost σ guestCtx body_g1_subgroup_check b_g1_subgroup_check := ConstCost.Core.analyze_sound table7_sound (by cbv)
theorem cc_g1_subgroup_check : CalleeCost σ guestCtx (nm "g1_subgroup_check") b_g1_subgroup_check := by
  have hc : ∃ rs, guestCode (nm "g1_subgroup_check") = some ((declPair Guest.Software.guestFn_g1_subgroup_check).2.1,body_g1_subgroup_check,rs) :=
    declPair_valid (List.getElem_mem (n := 769) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g1_subgroup_check
def table8 := ConstCost.Core.extend table7 (nm "g1_subgroup_check") b_g1_subgroup_check
theorem table8_sound : TblSound σ guestCtx table8 := ConstCost.Core.extend_sound table7_sound cc_g1_subgroup_check
#print axioms cc_g1_subgroup_check
end InitECandidate.Solver.MemSafe.BlsCost.Callees
