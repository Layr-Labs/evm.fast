import InitECandidate.Solver.MemSafe.RlpCost.Callers.C21
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StorageCost
variable {σ : Type}
def body_decode_step := (declPair Guest.Software.guestFn__decode_step).2.2
theorem cost_decode_step : Cost σ guestCtx body_decode_step (10^25) := by
 have hc : Cost σ guestCtx body_decode_step 612210542648263526362679 :=
  ArenaCost.Analyzer.analyze_sound RlpCost.Callers.table21_sound (by cbv)
 exact Cost.mono hc (by decide +kernel)
theorem cc_decode_step : CalleeCost σ guestCtx (nm "_decode_step") (10^25) := by
 have hc : guestCode (nm "_decode_step") = some ((declPair Guest.Software.guestFn__decode_step).2.1,body_decode_step,(fnEntry Guest.Software.guestFn__decode_step).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 261) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact ArenaCost.Analyzer.callee_of_body hc cost_decode_step
#print axioms cc_decode_step
def body_resolve_step := (declPair Guest.Software.guestFn__resolve_step).2.2
theorem cost_resolve_step : Cost σ guestCtx body_resolve_step (10^25) := by
 have hc : Cost σ guestCtx body_resolve_step 174856687168975961862598 :=
  ArenaCost.Analyzer.analyze_sound RlpCost.Callers.table21_sound (by cbv)
 exact Cost.mono hc (by decide +kernel)
theorem cc_resolve_step : CalleeCost σ guestCtx (nm "_resolve_step") (10^25) := by
 have hc : guestCode (nm "_resolve_step") = some ((declPair Guest.Software.guestFn__resolve_step).2.1,body_resolve_step,(fnEntry Guest.Software.guestFn__resolve_step).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 260) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv)
 exact ArenaCost.Analyzer.callee_of_body hc cost_resolve_step
#print axioms cc_resolve_step
end InitECandidate.Solver.MemSafe.StorageCost
