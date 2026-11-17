import InitECandidate.Solver.MemSafe.ConstCost.Callers.C23
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ConstCost.Callers
variable {σ : Type}
def body_op_staticcall := (declPair Guest.Software.guestFn_op_staticcall).2.2
def b_op_staticcall : Nat := 4109135169324035124706883454901154277091512197345851860148212352
theorem cost_op_staticcall : Cost σ guestCtx body_op_staticcall b_op_staticcall :=
  ConstCost.Core.analyze_sound table23_sound (by cbv)
theorem cc_op_staticcall : CalleeCost σ guestCtx (nm "op_staticcall") b_op_staticcall := by
  have hc : ∃ rs, guestCode (nm "op_staticcall") = some ((declPair Guest.Software.guestFn_op_staticcall).2.1,body_op_staticcall,rs) :=
    declPair_valid (List.getElem_mem (n := 606) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ConstCost.Core.callee_of_body hc cost_op_staticcall
def table24 := ConstCost.Core.extend table23 (nm "op_staticcall") b_op_staticcall
theorem table24_sound : TblSound σ guestCtx table24 := ConstCost.Core.extend_sound table23_sound cc_op_staticcall
#print axioms cc_op_staticcall
end InitECandidate.Solver.MemSafe.ConstCost.Callers
