import InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
variable {σ : Type}
def body_pre_modexp := (declPair Guest.Software.guestFn_pre_modexp).2.2
def b_pre_modexp : Nat := 62771017377250833860492953722508285926314206433369512739373
theorem cost_pre_modexp : Cost σ guestCtx body_pre_modexp b_pre_modexp := BlsSlotCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_pre_modexp : CalleeCost σ guestCtx (nm "pre_modexp") b_pre_modexp := by
 have hc : ∃ rs, guestCode (nm "pre_modexp") = some ((declPair Guest.Software.guestFn_pre_modexp).2.1,body_pre_modexp,rs) :=
  declPair_valid (List.getElem_mem (n := 829) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_pre_modexp
def table5 := BlsSlotCost.Core.extend table4 (nm "pre_modexp") b_pre_modexp
theorem table5_sound : TblSound σ guestCtx table5 := BlsSlotCost.Core.extend_sound table4_sound cc_pre_modexp
#print axioms cc_pre_modexp
end InitECandidate.Solver.MemSafe.BlsSlotCost.Bigint
