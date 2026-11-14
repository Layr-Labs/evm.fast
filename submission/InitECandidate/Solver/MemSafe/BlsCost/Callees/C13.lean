import InitECandidate.Solver.MemSafe.BlsCost.Callees.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp2_set_zero := (declPair Guest.Software.guestFn_fp2_set_zero).2.2
def b_fp2_set_zero : Nat := 137438953509
theorem cost_fp2_set_zero : Cost σ guestCtx body_fp2_set_zero b_fp2_set_zero := ConstCost.Core.analyze_sound table12_sound (by cbv)
theorem cc_fp2_set_zero : CalleeCost σ guestCtx (nm "fp2_set_zero") b_fp2_set_zero := by
  have hc : ∃ rs, guestCode (nm "fp2_set_zero") = some ((declPair Guest.Software.guestFn_fp2_set_zero).2.1,body_fp2_set_zero,rs) :=
    declPair_valid (List.getElem_mem (n := 722) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp2_set_zero
def table13 := ConstCost.Core.extend table12 (nm "fp2_set_zero") b_fp2_set_zero
theorem table13_sound : TblSound σ guestCtx table13 := ConstCost.Core.extend_sound table12_sound cc_fp2_set_zero
#print axioms cc_fp2_set_zero
end InitECandidate.Solver.MemSafe.BlsCost.Callees
