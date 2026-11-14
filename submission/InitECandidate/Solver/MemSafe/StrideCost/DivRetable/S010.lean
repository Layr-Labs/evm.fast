import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S009
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_htab_del := (declPair Guest.Software.guestFn_htab_del).2.2
def b_htab_del : Nat := 18446744211148505127
theorem cost_htab_del : Cost σ guestCtx body_htab_del b_htab_del :=
 StrideCost.CoreNext.analyze_sound table9_sound (by cbv)
theorem cc_htab_del : CalleeCost σ guestCtx (nm "htab_del") b_htab_del := by
 have hc : guestCode (nm "htab_del") = some ((declPair Guest.Software.guestFn_htab_del).2.1,body_htab_del,(fnEntry Guest.Software.guestFn_htab_del).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 139) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_htab_del
def table10 := StrideCost.CoreNext.extend table9 (nm "htab_del") b_htab_del
theorem table10_sound : TblSound σ guestCtx table10 :=
 StrideCost.CoreNext.extend_sound table9_sound cc_htab_del
#print axioms cc_htab_del
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
