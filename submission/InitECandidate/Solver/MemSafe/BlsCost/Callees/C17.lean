import InitECandidate.Solver.MemSafe.BlsCost.Callees.C16
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_normalize := (declPair Guest.Software.guestFn_g2_normalize).2.2
def b_g2_normalize : Nat := 137444884903
theorem cost_g2_normalize : Cost σ guestCtx body_g2_normalize b_g2_normalize := ConstCost.Core.analyze_sound table16_sound (by cbv)
theorem cc_g2_normalize : CalleeCost σ guestCtx (nm "g2_normalize") b_g2_normalize := by
  have hc : ∃ rs, guestCode (nm "g2_normalize") = some ((declPair Guest.Software.guestFn_g2_normalize).2.1,body_g2_normalize,rs) :=
    declPair_valid (List.getElem_mem (n := 777) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_normalize
def table17 := ConstCost.Core.extend table16 (nm "g2_normalize") b_g2_normalize
theorem table17_sound : TblSound σ guestCtx table17 := ConstCost.Core.extend_sound table16_sound cc_g2_normalize
#print axioms cc_g2_normalize
end InitECandidate.Solver.MemSafe.BlsCost.Callees
