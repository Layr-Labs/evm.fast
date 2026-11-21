import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S037
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_move_ether := (declPair Guest.Software.guestFn_move_ether).2.2
def b_move_ether : Nat := 349810273391210585458823429647515605157515
theorem cost_move_ether : Cost σ guestCtx body_move_ether b_move_ether :=
 StrideCost.CoreNext.analyze_sound table37_sound (by cbv)
theorem cc_move_ether : CalleeCost σ guestCtx (nm "move_ether") b_move_ether := by
 have hc : guestCode (nm "move_ether") = some ((declPair Guest.Software.guestFn_move_ether).2.1,body_move_ether,(fnEntry Guest.Software.guestFn_move_ether).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 395) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_move_ether
def table38 := StrideCost.CoreNext.extend table37 (nm "move_ether") b_move_ether
theorem table38_sound : TblSound σ guestCtx table38 :=
 StrideCost.CoreNext.extend_sound table37_sound cc_move_ether
#print axioms cc_move_ether
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
