import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S056
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_fp2_pow := (declPair Guest.Software.guestFn_fp2_pow).2.2
def b_fp2_pow : Nat := 7323357397537569898978
theorem cost_fp2_pow : Cost σ guestCtx body_fp2_pow b_fp2_pow :=
 StrideCost.CoreNext.analyze_sound table56_sound (by cbv)
theorem cc_fp2_pow : CalleeCost σ guestCtx (nm "fp2_pow") b_fp2_pow := by
 have hc : guestCode (nm "fp2_pow") = some ((declPair Guest.Software.guestFn_fp2_pow).2.1,body_fp2_pow,(fnEntry Guest.Software.guestFn_fp2_pow).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 736) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_fp2_pow
def table57 := StrideCost.CoreNext.extend table56 (nm "fp2_pow") b_fp2_pow
theorem table57_sound : TblSound σ guestCtx table57 :=
 StrideCost.CoreNext.extend_sound table56_sound cc_fp2_pow
#print axioms cc_fp2_pow
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
