import InitECandidate.Solver.MemSafe.FqCost.Retable.S016
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.Retable
variable {σ : Type}
def body_pre_bls_g2_msm := (declPair Guest.Software.guestFn_pre_bls_g2_msm).2.2
def b_pre_bls_g2_msm : Nat := 7259357313399600349420252978621606329839
theorem cost_pre_bls_g2_msm : Cost σ guestCtx body_pre_bls_g2_msm b_pre_bls_g2_msm := FqCost.CombCore.analyze_sound table16_sound (by cbv)
theorem cc_pre_bls_g2_msm : CalleeCost σ guestCtx (nm "pre_bls_g2_msm") b_pre_bls_g2_msm := by
 have hc : guestCode (nm "pre_bls_g2_msm") = some ((declPair Guest.Software.guestFn_pre_bls_g2_msm).2.1,body_pre_bls_g2_msm,(fnEntry Guest.Software.guestFn_pre_bls_g2_msm).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 817) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact FqCost.CombCore.callee_of_body hc cost_pre_bls_g2_msm
def table17 := FqCost.CombCore.extend table16 (nm "pre_bls_g2_msm") b_pre_bls_g2_msm
theorem table17_sound : TblSound σ guestCtx table17 := FqCost.CombCore.extend_sound table16_sound cc_pre_bls_g2_msm
#print axioms cc_pre_bls_g2_msm
end InitECandidate.Solver.MemSafe.FqCost.Retable
