import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S045
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_is_warm_address := (declPair Guest.Software.guestFn_is_warm_address).2.2
def b_is_warm_address : Nat := 18446744211148505128
theorem cost_is_warm_address : Cost σ guestCtx body_is_warm_address b_is_warm_address :=
 StrideCost.CoreNext.analyze_sound table45_sound (by cbv)
theorem cc_is_warm_address : CalleeCost σ guestCtx (nm "is_warm_address") b_is_warm_address := by
 have hc : guestCode (nm "is_warm_address") = some ((declPair Guest.Software.guestFn_is_warm_address).2.1,body_is_warm_address,(fnEntry Guest.Software.guestFn_is_warm_address).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 471) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_is_warm_address
def table46 := StrideCost.CoreNext.extend table45 (nm "is_warm_address") b_is_warm_address
theorem table46_sound : TblSound σ guestCtx table46 :=
 StrideCost.CoreNext.extend_sound table45_sound cc_is_warm_address
#print axioms cc_is_warm_address
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
