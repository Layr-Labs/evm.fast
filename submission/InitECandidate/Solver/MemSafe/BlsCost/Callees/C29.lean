import InitECandidate.Solver.MemSafe.BlsCost.Callees.C28
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_set_one := (declPair Guest.Software.guestFn_fp12_set_one).2.2
def b_fp12_set_one : Nat := 412316860532
theorem cost_fp12_set_one : Cost σ guestCtx body_fp12_set_one b_fp12_set_one := ConstCost.Core.analyze_sound table28_sound (by cbv)
theorem cc_fp12_set_one : CalleeCost σ guestCtx (nm "fp12_set_one") b_fp12_set_one := by
  have hc : ∃ rs, guestCode (nm "fp12_set_one") = some ((declPair Guest.Software.guestFn_fp12_set_one).2.1,body_fp12_set_one,rs) :=
    declPair_valid (List.getElem_mem (n := 748) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_set_one
def table29 := ConstCost.Core.extend table28 (nm "fp12_set_one") b_fp12_set_one
theorem table29_sound : TblSound σ guestCtx table29 := ConstCost.Core.extend_sound table28_sound cc_fp12_set_one
#print axioms cc_fp12_set_one
end InitECandidate.Solver.MemSafe.BlsCost.Callees
