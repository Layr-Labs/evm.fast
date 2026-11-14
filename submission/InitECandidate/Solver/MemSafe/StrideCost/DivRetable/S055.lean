import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S054
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_iso_horner_fp2 := (declPair Guest.Software.guestFn_iso_horner_fp2).2.2
def b_iso_horner_fp2 : Nat := 8928224131950300889656
theorem cost_iso_horner_fp2 : Cost σ guestCtx body_iso_horner_fp2 b_iso_horner_fp2 :=
 StrideCost.CoreNext.analyze_sound table54_sound (by cbv)
theorem cc_iso_horner_fp2 : CalleeCost σ guestCtx (nm "iso_horner_fp2") b_iso_horner_fp2 := by
 have hc : guestCode (nm "iso_horner_fp2") = some ((declPair Guest.Software.guestFn_iso_horner_fp2).2.1,body_iso_horner_fp2,(fnEntry Guest.Software.guestFn_iso_horner_fp2).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 794) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_iso_horner_fp2
def table55 := StrideCost.CoreNext.extend table54 (nm "iso_horner_fp2") b_iso_horner_fp2
theorem table55_sound : TblSound σ guestCtx table55 :=
 StrideCost.CoreNext.extend_sound table54_sound cc_iso_horner_fp2
#print axioms cc_iso_horner_fp2
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
