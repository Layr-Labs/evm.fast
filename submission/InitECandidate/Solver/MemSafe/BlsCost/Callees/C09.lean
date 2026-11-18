import InitECandidate.Solver.MemSafe.BlsCost.Callees.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_bls_g1_msm_exec := (declPair Guest.Software.guestFn_bls_g1_msm_exec).2.2
def b_bls_g1_msm_exec : Nat := 187072211531916642059941244997321997216914668691646
theorem cost_bls_g1_msm_exec : Cost σ guestCtx body_bls_g1_msm_exec b_bls_g1_msm_exec := ConstCost.Core.analyze_sound table8_sound (by cbv)
theorem cc_bls_g1_msm_exec : CalleeCost σ guestCtx (nm "bls_g1_msm_exec") b_bls_g1_msm_exec := by
  have hc : ∃ rs, guestCode (nm "bls_g1_msm_exec") = some ((declPair Guest.Software.guestFn_bls_g1_msm_exec).2.1,body_bls_g1_msm_exec,rs) :=
    declPair_valid (List.getElem_mem (n := 803) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_bls_g1_msm_exec
def table9 := ConstCost.Core.extend table8 (nm "bls_g1_msm_exec") b_bls_g1_msm_exec
theorem table9_sound : TblSound σ guestCtx table9 := ConstCost.Core.extend_sound table8_sound cc_bls_g1_msm_exec
#print axioms cc_bls_g1_msm_exec
end InitECandidate.Solver.MemSafe.BlsCost.Callees
