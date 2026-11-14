import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S004
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_u256_mulmod := (declPair Guest.Software.guestFn_u256_mulmod).2.2
def b_u256_mulmod : Nat := 300000000000110680464442257309894
theorem cost_u256_mulmod : Cost σ guestCtx body_u256_mulmod b_u256_mulmod :=
 StrideCost.CoreNext.analyze_sound table4_sound (by cbv)
theorem cc_u256_mulmod : CalleeCost σ guestCtx (nm "u256_mulmod") b_u256_mulmod := by
 have hc : guestCode (nm "u256_mulmod") = some ((declPair Guest.Software.guestFn_u256_mulmod).2.1,body_u256_mulmod,(fnEntry Guest.Software.guestFn_u256_mulmod).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 76) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_u256_mulmod
def table5 := StrideCost.CoreNext.extend table4 (nm "u256_mulmod") b_u256_mulmod
theorem table5_sound : TblSound σ guestCtx table5 :=
 StrideCost.CoreNext.extend_sound table4_sound cc_u256_mulmod
#print axioms cc_u256_mulmod
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
