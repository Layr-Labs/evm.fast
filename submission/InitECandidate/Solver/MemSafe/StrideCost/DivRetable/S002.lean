import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S001
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_u256_divmod := (declPair Guest.Software.guestFn_u256_divmod).2.2
def b_u256_divmod : Nat := 100000000000036893488147419103337
theorem cost_u256_divmod : Cost σ guestCtx body_u256_divmod b_u256_divmod :=
 StrideCost.CoreNext.analyze_sound table1_sound (by cbv)
theorem cc_u256_divmod : CalleeCost σ guestCtx (nm "u256_divmod") b_u256_divmod := by
 have hc : guestCode (nm "u256_divmod") = some ((declPair Guest.Software.guestFn_u256_divmod).2.1,body_u256_divmod,(fnEntry Guest.Software.guestFn_u256_divmod).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 69) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_u256_divmod
def table2 := StrideCost.CoreNext.extend table1 (nm "u256_divmod") b_u256_divmod
theorem table2_sound : TblSound σ guestCtx table2 :=
 StrideCost.CoreNext.extend_sound table1_sound cc_u256_divmod
#print axioms cc_u256_divmod
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
