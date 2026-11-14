import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S008
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_htab_has := (declPair Guest.Software.guestFn_htab_has).2.2
def b_htab_has : Nat := 18446744211148505127
theorem cost_htab_has : Cost σ guestCtx body_htab_has b_htab_has :=
 StrideCost.CoreNext.analyze_sound table8_sound (by cbv)
theorem cc_htab_has : CalleeCost σ guestCtx (nm "htab_has") b_htab_has := by
 have hc : guestCode (nm "htab_has") = some ((declPair Guest.Software.guestFn_htab_has).2.1,body_htab_has,(fnEntry Guest.Software.guestFn_htab_has).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 133) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_htab_has
def table9 := StrideCost.CoreNext.extend table8 (nm "htab_has") b_htab_has
theorem table9_sound : TblSound σ guestCtx table9 :=
 StrideCost.CoreNext.extend_sound table8_sound cc_htab_has
#print axioms cc_htab_has
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
