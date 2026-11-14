import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S039
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_lst_push := (declPair Guest.Software.guestFn_lst_push).2.2
def b_lst_push : Nat := 137438953512
theorem cost_lst_push : Cost σ guestCtx body_lst_push b_lst_push :=
 StrideCost.CoreNext.analyze_sound table39_sound (by cbv)
theorem cc_lst_push : CalleeCost σ guestCtx (nm "lst_push") b_lst_push := by
 have hc : guestCode (nm "lst_push") = some ((declPair Guest.Software.guestFn_lst_push).2.1,body_lst_push,(fnEntry Guest.Software.guestFn_lst_push).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 410) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_lst_push
def table40 := StrideCost.CoreNext.extend table39 (nm "lst_push") b_lst_push
theorem table40_sound : TblSound σ guestCtx table40 :=
 StrideCost.CoreNext.extend_sound table39_sound cc_lst_push
#print axioms cc_lst_push
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
