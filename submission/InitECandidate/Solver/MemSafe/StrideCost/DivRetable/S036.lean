import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S035
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_modify_state_commit := (declPair Guest.Software.guestFn_modify_state_commit).2.2
def b_modify_state_commit : Nat := 680564775674346746688510792614597888123
theorem cost_modify_state_commit : Cost σ guestCtx body_modify_state_commit b_modify_state_commit :=
 StrideCost.CoreNext.analyze_sound table35_sound (by cbv)
theorem cc_modify_state_commit : CalleeCost σ guestCtx (nm "modify_state_commit") b_modify_state_commit := by
 have hc : guestCode (nm "modify_state_commit") = some ((declPair Guest.Software.guestFn_modify_state_commit).2.1,body_modify_state_commit,(fnEntry Guest.Software.guestFn_modify_state_commit).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 391) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_modify_state_commit
def table36 := StrideCost.CoreNext.extend table35 (nm "modify_state_commit") b_modify_state_commit
theorem table36_sound : TblSound σ guestCtx table36 :=
 StrideCost.CoreNext.extend_sound table35_sound cc_modify_state_commit
#print axioms cc_modify_state_commit
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
