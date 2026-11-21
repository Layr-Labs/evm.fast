import InitECandidate.Solver.MemSafe.BlsCost.Callees.C10
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_copy := (declPair Guest.Software.guestFn_g2_copy).2.2
def b_g2_copy : Nat := 137438953509
theorem cost_g2_copy : Cost σ guestCtx body_g2_copy b_g2_copy := ConstCost.Core.analyze_sound table10_sound (by cbv)
theorem cc_g2_copy : CalleeCost σ guestCtx (nm "g2_copy") b_g2_copy := by
  have hc : ∃ rs, guestCode (nm "g2_copy") = some ((declPair Guest.Software.guestFn_g2_copy).2.1,body_g2_copy,rs) :=
    declPair_valid (List.getElem_mem (n := 772) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_copy
def table11 := ConstCost.Core.extend table10 (nm "g2_copy") b_g2_copy
theorem table11_sound : TblSound σ guestCtx table11 := ConstCost.Core.extend_sound table10_sound cc_g2_copy
#print axioms cc_g2_copy
end InitECandidate.Solver.MemSafe.BlsCost.Callees
