import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S017
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_jset := (declPair Guest.Software.guestFn_jset).2.2
def b_jset : Nat := 55340234488871387792
theorem cost_jset : Cost σ guestCtx body_jset b_jset :=
 StrideCost.CoreNext.analyze_sound table17_sound (by cbv)
theorem cc_jset : CalleeCost σ guestCtx (nm "jset") b_jset := by
 have hc : guestCode (nm "jset") = some ((declPair Guest.Software.guestFn_jset).2.1,body_jset,(fnEntry Guest.Software.guestFn_jset).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 356) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_jset
def table18 := StrideCost.CoreNext.extend table17 (nm "jset") b_jset
theorem table18_sound : TblSound σ guestCtx table18 :=
 StrideCost.CoreNext.extend_sound table17_sound cc_jset
#print axioms cc_jset
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
