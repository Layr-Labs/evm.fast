import InitECandidate.Solver.MemSafe.BlsCost.Callees.C32
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_final_exp := (declPair Guest.Software.guestFn_fp12_final_exp).2.2
def b_fp12_final_exp : Nat := 76059037278310304076292087931554
theorem cost_fp12_final_exp : Cost σ guestCtx body_fp12_final_exp b_fp12_final_exp := ConstCost.Core.analyze_sound table32_sound (by cbv)
theorem cc_fp12_final_exp : CalleeCost σ guestCtx (nm "fp12_final_exp") b_fp12_final_exp := by
  have hc : ∃ rs, guestCode (nm "fp12_final_exp") = some ((declPair Guest.Software.guestFn_fp12_final_exp).2.1,body_fp12_final_exp,rs) :=
    declPair_valid (List.getElem_mem (n := 757) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_final_exp
def table33 := ConstCost.Core.extend table32 (nm "fp12_final_exp") b_fp12_final_exp
theorem table33_sound : TblSound σ guestCtx table33 := ConstCost.Core.extend_sound table32_sound cc_fp12_final_exp
#print axioms cc_fp12_final_exp
end InitECandidate.Solver.MemSafe.BlsCost.Callees
