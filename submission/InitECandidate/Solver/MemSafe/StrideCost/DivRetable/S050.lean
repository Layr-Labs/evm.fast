import InitECandidate.Solver.MemSafe.StrideCost.DivRetable.S049
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.StrideCost.DivRetable
variable {σ : Type}
def body_emit_transfer_log := (declPair Guest.Software.guestFn_emit_transfer_log).2.2
def b_emit_transfer_log : Nat := 824633721090
theorem cost_emit_transfer_log : Cost σ guestCtx body_emit_transfer_log b_emit_transfer_log :=
 StrideCost.CoreNext.analyze_sound table49_sound (by cbv)
theorem cc_emit_transfer_log : CalleeCost σ guestCtx (nm "emit_transfer_log") b_emit_transfer_log := by
 have hc : guestCode (nm "emit_transfer_log") = some ((declPair Guest.Software.guestFn_emit_transfer_log).2.1,body_emit_transfer_log,(fnEntry Guest.Software.guestFn_emit_transfer_log).2.2.2) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 567) (by decide)) ⟨_,rfl⟩ (by
   conv => lhs; cbv
   conv => rhs; cbv
   all_goals rfl)
 exact StrideCost.CoreNext.callee_of_body hc cost_emit_transfer_log
def table50 := StrideCost.CoreNext.extend table49 (nm "emit_transfer_log") b_emit_transfer_log
theorem table50_sound : TblSound σ guestCtx table50 :=
 StrideCost.CoreNext.extend_sound table49_sound cc_emit_transfer_log
#print axioms cc_emit_transfer_log
end InitECandidate.Solver.MemSafe.StrideCost.DivRetable
