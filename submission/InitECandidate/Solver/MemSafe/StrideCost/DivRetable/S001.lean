import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.Base
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_digits_divmod := (declPair Guest.Software.guestFn_digits_divmod).2.2
def b_digits_divmod : Nat := 100000000000036893488147419103266
theorem cost_digits_divmod : Cost σ guestCtx body_digits_divmod b_digits_divmod :=
 StrideCost.CoreNext.analyze_sound table0_sound (by cbv)
theorem cc_digits_divmod : CalleeCost σ guestCtx (nm "digits_divmod") b_digits_divmod := by
 have hc : guestCode (nm "digits_divmod") = some ((declPair Guest.Software.guestFn_digits_divmod).2.1,body_digits_divmod,(fnEntry Guest.Software.guestFn_digits_divmod).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 68) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_digits_divmod
def table1 := StrideCost.CoreNext.extend table0 (nm "digits_divmod") b_digits_divmod
theorem table1_sound : TblSound σ guestCtx table1 :=
 StrideCost.CoreNext.extend_sound table0_sound cc_digits_divmod
#print axioms cc_digits_divmod
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
