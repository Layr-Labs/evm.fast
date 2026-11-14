import InitECandidate.Solver.MemSafe.BlsCost.Callees.C13
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_set_inf := (declPair Guest.Software.guestFn_g2_set_inf).2.2
def b_g2_set_inf : Nat := 137438953512
theorem cost_g2_set_inf : Cost σ guestCtx body_g2_set_inf b_g2_set_inf := ConstCost.Core.analyze_sound table13_sound (by cbv)
theorem cc_g2_set_inf : CalleeCost σ guestCtx (nm "g2_set_inf") b_g2_set_inf := by
  have hc : ∃ rs, guestCode (nm "g2_set_inf") = some ((declPair Guest.Software.guestFn_g2_set_inf).2.1,body_g2_set_inf,rs) :=
    declPair_valid (List.getElem_mem (n := 770) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_set_inf
def table14 := ConstCost.Core.extend table13 (nm "g2_set_inf") b_g2_set_inf
theorem table14_sound : TblSound σ guestCtx table14 := ConstCost.Core.extend_sound table13_sound cc_g2_set_inf
#print axioms cc_g2_set_inf
end InitECandidate.Solver.MemSafe.BlsCost.Callees
