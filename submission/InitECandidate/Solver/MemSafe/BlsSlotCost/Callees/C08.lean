import InitECandidate.Solver.MemSafe.BlsSlotCost.Callees.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def body_pre_bls_g2_msm := (declPair Guest.Software.guestFn_pre_bls_g2_msm).2.2
def b_pre_bls_g2_msm : Nat := 2090694873705817318673324100821227268855279
theorem cost_pre_bls_g2_msm : Cost σ guestCtx body_pre_bls_g2_msm b_pre_bls_g2_msm := BlsSlotCost.Core.analyze_sound table7_sound (by cbv)
theorem cc_pre_bls_g2_msm : CalleeCost σ guestCtx (nm "pre_bls_g2_msm") b_pre_bls_g2_msm := by
 have hc : ∃ rs, guestCode (nm "pre_bls_g2_msm") = some ((declPair Guest.Software.guestFn_pre_bls_g2_msm).2.1,body_pre_bls_g2_msm,rs) :=
  declPair_valid (List.getElem_mem (n := 817) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_pre_bls_g2_msm
def table8 := BlsSlotCost.Core.extend table7 (nm "pre_bls_g2_msm") b_pre_bls_g2_msm
theorem table8_sound : TblSound σ guestCtx table8 := BlsSlotCost.Core.extend_sound table7_sound cc_pre_bls_g2_msm
#print axioms cc_pre_bls_g2_msm
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
