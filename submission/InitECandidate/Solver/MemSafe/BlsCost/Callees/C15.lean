import InitECandidate.Solver.MemSafe.BlsCost.Callees.C14
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsCost.Callees
variable {σ : Type}
def body_g2_add := (declPair Guest.Software.guestFn_g2_add).2.2
def b_g2_add : Nat := 1236950587239
theorem cost_g2_add : Cost σ guestCtx body_g2_add b_g2_add := ConstCost.Core.analyze_sound table14_sound (by cbv)
theorem cc_g2_add : CalleeCost σ guestCtx (nm "g2_add") b_g2_add := by
  have hc : ∃ rs, guestCode (nm "g2_add") = some ((declPair Guest.Software.guestFn_g2_add).2.1,body_g2_add,rs) :=
    declPair_valid (List.getElem_mem (n := 775) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_g2_add
def table15 := ConstCost.Core.extend table14 (nm "g2_add") b_g2_add
theorem table15_sound : TblSound σ guestCtx table15 := ConstCost.Core.extend_sound table14_sound cc_g2_add
#print axioms cc_g2_add
end InitECandidate.Solver.MemSafe.BlsCost.Callees
