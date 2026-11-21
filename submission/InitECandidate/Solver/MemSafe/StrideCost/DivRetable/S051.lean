import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S050
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_op_selfdestruct := (declPair Guest.Software.guestFn_op_selfdestruct).2.2
def b_op_selfdestruct : Nat := 872483989151003423407103722210335278865556
theorem cost_op_selfdestruct : Cost σ guestCtx body_op_selfdestruct b_op_selfdestruct :=
 StrideCost.CoreNext.analyze_sound table50_sound (by cbv)
theorem cc_op_selfdestruct : CalleeCost σ guestCtx (nm "op_selfdestruct") b_op_selfdestruct := by
 have hc : guestCode (nm "op_selfdestruct") = some ((declPair Guest.Software.guestFn_op_selfdestruct).2.1,body_op_selfdestruct,(fnEntry Guest.Software.guestFn_op_selfdestruct).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 570) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_op_selfdestruct
def table51 := StrideCost.CoreNext.extend table50 (nm "op_selfdestruct") b_op_selfdestruct
theorem table51_sound : TblSound σ guestCtx table51 :=
 StrideCost.CoreNext.extend_sound table50_sound cc_op_selfdestruct
#print axioms cc_op_selfdestruct
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
