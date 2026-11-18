import InitECandidate.Solver.MemSafe.BlsSlotCost.Compact
import InitECandidate.Solver.MemSafe.BlsSlotCost.Callees.C03
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
variable {σ : Type}
def body_bls_g1_msm_exec := (declPair Guest.Software.guestFn_bls_g1_msm_exec).2.2
def b_bls_g1_msm_exec : Nat := 348449147457102878760770279828701730022766
theorem cost_bls_g1_msm_exec : Cost σ guestCtx body_bls_g1_msm_exec b_bls_g1_msm_exec := BlsSlotCost.ReadAnalyzer.readCostA_sound BlsSlotCost.Compact.table47_sound body_bls_g1_msm_exec b_bls_g1_msm_exec (by cbv)
theorem cc_bls_g1_msm_exec : CalleeCost σ guestCtx (nm "bls_g1_msm_exec") b_bls_g1_msm_exec := by
 have hc : ∃ rs, guestCode (nm "bls_g1_msm_exec") = some ((declPair Guest.Software.guestFn_bls_g1_msm_exec).2.1,body_bls_g1_msm_exec,rs) :=
  declPair_valid (List.getElem_mem (n := 803) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_bls_g1_msm_exec
def table4 := BlsSlotCost.Core.extend table3 (nm "bls_g1_msm_exec") b_bls_g1_msm_exec
theorem table4_sound : TblSound σ guestCtx table4 := BlsSlotCost.Core.extend_sound table3_sound cc_bls_g1_msm_exec
#print axioms cc_bls_g1_msm_exec
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callees
