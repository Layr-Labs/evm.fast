import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S010
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_fn_mul := (declPair Guest.Software.guestFn_fn_mul).2.2
def b_fn_mul : Nat := 300000000000110680464442257309895
theorem cost_fn_mul : Cost σ guestCtx body_fn_mul b_fn_mul :=
 StrideCost.CoreNext.analyze_sound table10_sound (by cbv)
theorem cc_fn_mul : CalleeCost σ guestCtx (nm "fn_mul") b_fn_mul := by
 have hc : guestCode (nm "fn_mul") = some ((declPair Guest.Software.guestFn_fn_mul).2.1,body_fn_mul,(fnEntry Guest.Software.guestFn_fn_mul).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 162) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_fn_mul
def table11 := StrideCost.CoreNext.extend table10 (nm "fn_mul") b_fn_mul
theorem table11_sound : TblSound σ guestCtx table11 :=
 StrideCost.CoreNext.extend_sound table10_sound cc_fn_mul
#print axioms cc_fn_mul
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
