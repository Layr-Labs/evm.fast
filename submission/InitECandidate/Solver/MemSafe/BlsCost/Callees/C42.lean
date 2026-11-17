import InitECandidate.Solver.MemSafe.BlsCost.Callees.C41
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pre_bls_g2_msm := (declPair Guest.Software.guestFn_pre_bls_g2_msm).2.2
def b_pre_bls_g2_msm : Nat := 1122433263266162997104498776086767615585487813272159
theorem cost_pre_bls_g2_msm : Cost σ guestCtx body_pre_bls_g2_msm b_pre_bls_g2_msm := ConstCost.Core.analyze_sound table41_sound (by cbv)
theorem cc_pre_bls_g2_msm : CalleeCost σ guestCtx (nm "pre_bls_g2_msm") b_pre_bls_g2_msm := by
  have hc : ∃ rs, guestCode (nm "pre_bls_g2_msm") = some ((declPair Guest.Software.guestFn_pre_bls_g2_msm).2.1,body_pre_bls_g2_msm,rs) :=
    declPair_valid (List.getElem_mem (n := 817) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pre_bls_g2_msm
def table42 := ConstCost.Core.extend table41 (nm "pre_bls_g2_msm") b_pre_bls_g2_msm
theorem table42_sound : TblSound σ guestCtx table42 := ConstCost.Core.extend_sound table41_sound cc_pre_bls_g2_msm
#print axioms cc_pre_bls_g2_msm
end InitECandidate.Solver.MemSafe.BlsCost.Callees
