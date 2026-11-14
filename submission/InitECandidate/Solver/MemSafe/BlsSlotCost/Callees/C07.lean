import InitECandidate.Solver.MemSafe.BlsSlotCost.Callees.C06
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def body_pre_bls_g1_msm := (declPair Guest.Software.guestFn_pre_bls_g1_msm).2.2
def b_pre_bls_g1_msm : Nat := 348449147457102878760807173316849149126010
theorem cost_pre_bls_g1_msm : Cost σ guestCtx body_pre_bls_g1_msm b_pre_bls_g1_msm := BlsSlotCost.Core.analyze_sound table6_sound (by cbv)
theorem cc_pre_bls_g1_msm : CalleeCost σ guestCtx (nm "pre_bls_g1_msm") b_pre_bls_g1_msm := by
 have hc : ∃ rs, guestCode (nm "pre_bls_g1_msm") = some ((declPair Guest.Software.guestFn_pre_bls_g1_msm).2.1,body_pre_bls_g1_msm,rs) :=
  declPair_valid (List.getElem_mem (n := 815) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_pre_bls_g1_msm
def table7 := BlsSlotCost.Core.extend table6 (nm "pre_bls_g1_msm") b_pre_bls_g1_msm
theorem table7_sound : TblSound σ guestCtx table7 := BlsSlotCost.Core.extend_sound table6_sound cc_pre_bls_g1_msm
#print axioms cc_pre_bls_g1_msm
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
