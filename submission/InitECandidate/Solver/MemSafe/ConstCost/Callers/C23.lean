import InitECandidate.Solver.MemSafe.ConstCost.Callers.C22
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_op_delegatecall := (declPair Guest.Software.guestFn_op_delegatecall).2.2
def b_op_delegatecall : Nat := 4109135169324035124706883454901154277091512197345851860148212352
theorem cost_op_delegatecall : Cost σ guestCtx body_op_delegatecall b_op_delegatecall :=
  ConstCost.Core.analyze_sound table22_sound (by cbv)
theorem cc_op_delegatecall : CalleeCost σ guestCtx (nm "op_delegatecall") b_op_delegatecall := by
  have hc : ∃ rs, guestCode (nm "op_delegatecall") = some ((declPair Guest.Software.guestFn_op_delegatecall).2.1,body_op_delegatecall,rs) :=
    declPair_valid (List.getElem_mem (n := 605) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_op_delegatecall
def table23 := ConstCost.Core.extend table22 (nm "op_delegatecall") b_op_delegatecall
theorem table23_sound : TblSound σ guestCtx table23 := ConstCost.Core.extend_sound table22_sound cc_op_delegatecall
#print axioms cc_op_delegatecall
end InitECandidate.Solver.MemSafe.ConstCost.Callers
