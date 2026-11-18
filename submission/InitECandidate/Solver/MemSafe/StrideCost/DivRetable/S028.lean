import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S027
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_get_code := (declPair Guest.Software.guestFn_get_code).2.2
def b_get_code : Nat := 92233723323485258574
theorem cost_get_code : Cost σ guestCtx body_get_code b_get_code :=
 StrideCost.CoreNext.analyze_sound table27_sound (by cbv)
theorem cc_get_code : CalleeCost σ guestCtx (nm "get_code") b_get_code := by
 have hc : guestCode (nm "get_code") = some ((declPair Guest.Software.guestFn_get_code).2.1,body_get_code,(fnEntry Guest.Software.guestFn_get_code).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 376) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_get_code
def table28 := StrideCost.CoreNext.extend table27 (nm "get_code") b_get_code
theorem table28_sound : TblSound σ guestCtx table28 :=
 StrideCost.CoreNext.extend_sound table27_sound cc_get_code
#print axioms cc_get_code
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
