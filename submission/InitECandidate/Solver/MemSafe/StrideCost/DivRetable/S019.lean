import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S018
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_jdel := (declPair Guest.Software.guestFn_jdel).2.2
def b_jdel : Nat := 36893488559735963769
theorem cost_jdel : Cost σ guestCtx body_jdel b_jdel :=
 StrideCost.CoreNext.analyze_sound table18_sound (by cbv)
theorem cc_jdel : CalleeCost σ guestCtx (nm "jdel") b_jdel := by
 have hc : guestCode (nm "jdel") = some ((declPair Guest.Software.guestFn_jdel).2.1,body_jdel,(fnEntry Guest.Software.guestFn_jdel).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 357) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_jdel
def table19 := StrideCost.CoreNext.extend table18 (nm "jdel") b_jdel
theorem table19_sound : TblSound σ guestCtx table19 :=
 StrideCost.CoreNext.extend_sound table18_sound cc_jdel
#print axioms cc_jdel
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
