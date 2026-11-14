import InitECandidate.Solver.MemSafe.BlsCost.Callees.C19
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_subgroup_check := (declPair Guest.Software.guestFn_g2_subgroup_check).2.2
def b_g2_subgroup_check : Nat := 30423614562569978169555563848096
theorem cost_g2_subgroup_check : Cost σ guestCtx body_g2_subgroup_check b_g2_subgroup_check := ConstCost.Core.analyze_sound table19_sound (by cbv)
theorem cc_g2_subgroup_check : CalleeCost σ guestCtx (nm "g2_subgroup_check") b_g2_subgroup_check := by
  have hc : ∃ rs, guestCode (nm "g2_subgroup_check") = some ((declPair Guest.Software.guestFn_g2_subgroup_check).2.1,body_g2_subgroup_check,rs) :=
    declPair_valid (List.getElem_mem (n := 781) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_subgroup_check
def table20 := ConstCost.Core.extend table19 (nm "g2_subgroup_check") b_g2_subgroup_check
theorem table20_sound : TblSound σ guestCtx table20 := ConstCost.Core.extend_sound table19_sound cc_g2_subgroup_check
#print axioms cc_g2_subgroup_check
end InitECandidate.Solver.MemSafe.BlsCost.Callees
