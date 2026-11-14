import InitECandidate.Solver.MemSafe.BlsCost.Callees.C21
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp6_copy := (declPair Guest.Software.guestFn_fp6_copy).2.2
def b_fp6_copy : Nat := 137438953509
theorem cost_fp6_copy : Cost σ guestCtx body_fp6_copy b_fp6_copy := ConstCost.Core.analyze_sound table21_sound (by cbv)
theorem cc_fp6_copy : CalleeCost σ guestCtx (nm "fp6_copy") b_fp6_copy := by
  have hc : ∃ rs, guestCode (nm "fp6_copy") = some ((declPair Guest.Software.guestFn_fp6_copy).2.1,body_fp6_copy,rs) :=
    declPair_valid (List.getElem_mem (n := 738) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp6_copy
def table22 := ConstCost.Core.extend table21 (nm "fp6_copy") b_fp6_copy
theorem table22_sound : TblSound σ guestCtx table22 := ConstCost.Core.extend_sound table21_sound cc_fp6_copy
#print axioms cc_fp6_copy
end InitECandidate.Solver.MemSafe.BlsCost.Callees
