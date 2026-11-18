import InitECandidate.Solver.MemSafe.BlsCost.Callees.C30
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_exp_x := (declPair Guest.Software.guestFn_fp12_exp_x).2.2
def b_fp12_exp_x : Nat := 15211807455662060814241368127126
theorem cost_fp12_exp_x : Cost σ guestCtx body_fp12_exp_x b_fp12_exp_x := ConstCost.Core.analyze_sound table30_sound (by cbv)
theorem cc_fp12_exp_x : CalleeCost σ guestCtx (nm "fp12_exp_x") b_fp12_exp_x := by
  have hc : ∃ rs, guestCode (nm "fp12_exp_x") = some ((declPair Guest.Software.guestFn_fp12_exp_x).2.1,body_fp12_exp_x,rs) :=
    declPair_valid (List.getElem_mem (n := 756) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_exp_x
def table31 := ConstCost.Core.extend table30 (nm "fp12_exp_x") b_fp12_exp_x
theorem table31_sound : TblSound σ guestCtx table31 := ConstCost.Core.extend_sound table30_sound cc_fp12_exp_x
#print axioms cc_fp12_exp_x
end InitECandidate.Solver.MemSafe.BlsCost.Callees
