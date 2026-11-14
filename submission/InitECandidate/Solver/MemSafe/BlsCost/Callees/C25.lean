import InitECandidate.Solver.MemSafe.BlsCost.Callees.C24
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp6_mul_v := (declPair Guest.Software.guestFn_fp6_mul_v).2.2
def b_fp6_mul_v : Nat := 412316860542
theorem cost_fp6_mul_v : Cost σ guestCtx body_fp6_mul_v b_fp6_mul_v := ConstCost.Core.analyze_sound table24_sound (by cbv)
theorem cc_fp6_mul_v : CalleeCost σ guestCtx (nm "fp6_mul_v") b_fp6_mul_v := by
  have hc : ∃ rs, guestCode (nm "fp6_mul_v") = some ((declPair Guest.Software.guestFn_fp6_mul_v).2.1,body_fp6_mul_v,rs) :=
    declPair_valid (List.getElem_mem (n := 745) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp6_mul_v
def table25 := ConstCost.Core.extend table24 (nm "fp6_mul_v") b_fp6_mul_v
theorem table25_sound : TblSound σ guestCtx table25 := ConstCost.Core.extend_sound table24_sound cc_fp6_mul_v
#print axioms cc_fp6_mul_v
end InitECandidate.Solver.MemSafe.BlsCost.Callees
