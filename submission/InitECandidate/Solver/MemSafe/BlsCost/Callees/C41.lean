import InitECandidate.Solver.MemSafe.BlsCost.Callees.C40
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_pre_bls_g1_msm := (declPair Guest.Software.guestFn_pre_bls_g1_msm).2.2
def b_pre_bls_g1_msm : Nat := 187072211531916642059941244997358890705062087794890
theorem cost_pre_bls_g1_msm : Cost σ guestCtx body_pre_bls_g1_msm b_pre_bls_g1_msm := ConstCost.Core.analyze_sound table40_sound (by cbv)
theorem cc_pre_bls_g1_msm : CalleeCost σ guestCtx (nm "pre_bls_g1_msm") b_pre_bls_g1_msm := by
  have hc : ∃ rs, guestCode (nm "pre_bls_g1_msm") = some ((declPair Guest.Software.guestFn_pre_bls_g1_msm).2.1,body_pre_bls_g1_msm,rs) :=
    declPair_valid (List.getElem_mem (n := 815) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_pre_bls_g1_msm
def table41 := ConstCost.Core.extend table40 (nm "pre_bls_g1_msm") b_pre_bls_g1_msm
theorem table41_sound : TblSound σ guestCtx table41 := ConstCost.Core.extend_sound table40_sound cc_pre_bls_g1_msm
#print axioms cc_pre_bls_g1_msm
end InitECandidate.Solver.MemSafe.BlsCost.Callees
