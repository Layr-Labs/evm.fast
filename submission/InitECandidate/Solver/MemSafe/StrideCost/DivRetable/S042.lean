import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S041
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_extend_memory := (declPair Guest.Software.guestFn_extend_memory).2.2
def b_extend_memory : Nat := 274877907021
theorem cost_extend_memory : Cost σ guestCtx body_extend_memory b_extend_memory :=
 StrideCost.CoreNext.analyze_sound table41_sound (by cbv)
theorem cc_extend_memory : CalleeCost σ guestCtx (nm "extend_memory") b_extend_memory := by
 have hc : guestCode (nm "extend_memory") = some ((declPair Guest.Software.guestFn_extend_memory).2.1,body_extend_memory,(fnEntry Guest.Software.guestFn_extend_memory).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 460) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_extend_memory
def table42 := StrideCost.CoreNext.extend table41 (nm "extend_memory") b_extend_memory
theorem table42_sound : TblSound σ guestCtx table42 :=
 StrideCost.CoreNext.extend_sound table41_sound cc_extend_memory
#print axioms cc_extend_memory
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
