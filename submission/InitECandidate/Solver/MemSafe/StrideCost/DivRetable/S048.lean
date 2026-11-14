import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S047
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_ext_code_of := (declPair Guest.Software.guestFn_ext_code_of).2.2
def b_ext_code_of : Nat := 174224571919930945982815437754329250995694
theorem cost_ext_code_of : Cost σ guestCtx body_ext_code_of b_ext_code_of :=
 StrideCost.CoreNext.analyze_sound table47_sound (by cbv)
theorem cc_ext_code_of : CalleeCost σ guestCtx (nm "ext_code_of") b_ext_code_of := by
 have hc : guestCode (nm "ext_code_of") = some ((declPair Guest.Software.guestFn_ext_code_of).2.1,body_ext_code_of,(fnEntry Guest.Software.guestFn_ext_code_of).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 543) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_ext_code_of
def table48 := StrideCost.CoreNext.extend table47 (nm "ext_code_of") b_ext_code_of
theorem table48_sound : TblSound σ guestCtx table48 :=
 StrideCost.CoreNext.extend_sound table47_sound cc_ext_code_of
#print axioms cc_ext_code_of
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
