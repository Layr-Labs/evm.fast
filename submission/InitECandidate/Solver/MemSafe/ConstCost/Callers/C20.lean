import InitECandidate.Solver.MemSafe.ConstCost.Callers.C19
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_op_callcode := (declPair Guest.Software.guestFn_op_callcode).2.2
def b_op_callcode : Nat := 4109135169324035124707058360037807416089121364249515163310353570
theorem cost_op_callcode : Cost σ guestCtx body_op_callcode b_op_callcode :=
  ConstCost.Core.analyze_sound table19_sound (by cbv)
theorem cc_op_callcode : CalleeCost σ guestCtx (nm "op_callcode") b_op_callcode := by
  have hc : ∃ rs, guestCode (nm "op_callcode") = some ((declPair Guest.Software.guestFn_op_callcode).2.1,body_op_callcode,rs) :=
    declPair_valid (List.getElem_mem (n := 604) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_op_callcode
def table20 := ConstCost.Core.extend table19 (nm "op_callcode") b_op_callcode
theorem table20_sound : TblSound σ guestCtx table20 := ConstCost.Core.extend_sound table19_sound cc_op_callcode
#print axioms cc_op_callcode
end InitECandidate.Solver.MemSafe.ConstCost.Callers
