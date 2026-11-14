import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S051
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_calculate_delegation_cost := (declPair Guest.Software.guestFn_calculate_delegation_cost).2.2
def b_calculate_delegation_cost : Nat := 174224571919930945982833884498677838454337
theorem cost_calculate_delegation_cost : Cost σ guestCtx body_calculate_delegation_cost b_calculate_delegation_cost :=
 StrideCost.CoreNext.analyze_sound table51_sound (by cbv)
theorem cc_calculate_delegation_cost : CalleeCost σ guestCtx (nm "calculate_delegation_cost") b_calculate_delegation_cost := by
 have hc : guestCode (nm "calculate_delegation_cost") = some ((declPair Guest.Software.guestFn_calculate_delegation_cost).2.1,body_calculate_delegation_cost,(fnEntry Guest.Software.guestFn_calculate_delegation_cost).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 573) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_calculate_delegation_cost
def table52 := StrideCost.CoreNext.extend table51 (nm "calculate_delegation_cost") b_calculate_delegation_cost
theorem table52_sound : TblSound σ guestCtx table52 :=
 StrideCost.CoreNext.extend_sound table51_sound cc_calculate_delegation_cost
#print axioms cc_calculate_delegation_cost
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
