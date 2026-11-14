import InitECandidate.Solver.MemSafe.BlsCost.Callees.C33
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_is_one := (declPair Guest.Software.guestFn_fp12_is_one).2.2
def b_fp12_is_one : Nat := 549755814047
theorem cost_fp12_is_one : Cost σ guestCtx body_fp12_is_one b_fp12_is_one := ConstCost.Core.analyze_sound table33_sound (by cbv)
theorem cc_fp12_is_one : CalleeCost σ guestCtx (nm "fp12_is_one") b_fp12_is_one := by
  have hc : ∃ rs, guestCode (nm "fp12_is_one") = some ((declPair Guest.Software.guestFn_fp12_is_one).2.1,body_fp12_is_one,rs) :=
    declPair_valid (List.getElem_mem (n := 749) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_is_one
def table34 := ConstCost.Core.extend table33 (nm "fp12_is_one") b_fp12_is_one
theorem table34_sound : TblSound σ guestCtx table34 := ConstCost.Core.extend_sound table33_sound cc_fp12_is_one
#print axioms cc_fp12_is_one
end InitECandidate.Solver.MemSafe.BlsCost.Callees
