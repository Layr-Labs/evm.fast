import InitECandidate.Solver.MemSafe.BlsCost.Callees.C23
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_fp12_copy := (declPair Guest.Software.guestFn_fp12_copy).2.2
def b_fp12_copy : Nat := 137438953509
theorem cost_fp12_copy : Cost σ guestCtx body_fp12_copy b_fp12_copy := ConstCost.Core.analyze_sound table23_sound (by cbv)
theorem cc_fp12_copy : CalleeCost σ guestCtx (nm "fp12_copy") b_fp12_copy := by
  have hc : ∃ rs, guestCode (nm "fp12_copy") = some ((declPair Guest.Software.guestFn_fp12_copy).2.1,body_fp12_copy,rs) :=
    declPair_valid (List.getElem_mem (n := 747) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_fp12_copy
def table24 := ConstCost.Core.extend table23 (nm "fp12_copy") b_fp12_copy
theorem table24_sound : TblSound σ guestCtx table24 := ConstCost.Core.extend_sound table23_sound cc_fp12_copy
#print axioms cc_fp12_copy
end InitECandidate.Solver.MemSafe.BlsCost.Callees
