import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S007
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_htab_get := (declPair Guest.Software.guestFn_htab_get).2.2
def b_htab_get : Nat := 18446744211148505127
theorem cost_htab_get : Cost σ guestCtx body_htab_get b_htab_get :=
 StrideCost.CoreNext.analyze_sound table7_sound (by cbv)
theorem cc_htab_get : CalleeCost σ guestCtx (nm "htab_get") b_htab_get := by
 have hc : guestCode (nm "htab_get") = some ((declPair Guest.Software.guestFn_htab_get).2.1,body_htab_get,(fnEntry Guest.Software.guestFn_htab_get).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 132) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_htab_get
def table8 := StrideCost.CoreNext.extend table7 (nm "htab_get") b_htab_get
theorem table8_sound : TblSound σ guestCtx table8 :=
 StrideCost.CoreNext.extend_sound table7_sound cc_htab_get
#print axioms cc_htab_get
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
