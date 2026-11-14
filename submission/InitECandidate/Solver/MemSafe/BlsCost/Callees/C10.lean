import InitECandidate.Solver.MemSafe.BlsCost.Callees.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp2_copy := (declPair Guest.Software.guestFn_fp2_copy).2.2
def b_fp2_copy : Nat := 137438953509
theorem cost_fp2_copy : Cost σ guestCtx body_fp2_copy b_fp2_copy := ConstCost.Core.analyze_sound table9_sound (by cbv)
theorem cc_fp2_copy : CalleeCost σ guestCtx (nm "fp2_copy") b_fp2_copy := by
  have hc : ∃ rs, guestCode (nm "fp2_copy") = some ((declPair Guest.Software.guestFn_fp2_copy).2.1,body_fp2_copy,rs) :=
    declPair_valid (List.getElem_mem (n := 721) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp2_copy
def table10 := ConstCost.Core.extend table9 (nm "fp2_copy") b_fp2_copy
theorem table10_sound : TblSound σ guestCtx table10 := ConstCost.Core.extend_sound table9_sound cc_fp2_copy
#print axioms cc_fp2_copy
end InitECandidate.Solver.MemSafe.BlsCost.Callees
