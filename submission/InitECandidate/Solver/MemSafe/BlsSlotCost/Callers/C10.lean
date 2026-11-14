import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C09
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_op_create2 := (declPair Guest.Software.guestFn_op_create2).2.2
def b_op_create2 : Nat := 75325220848024200849356242016119720476054891436697654402817
theorem cost_op_create2 : Cost σ guestCtx body_op_create2 b_op_create2 := BlsSlotCost.Core.analyze_sound table9_sound (by cbv)
theorem cc_op_create2 : CalleeCost σ guestCtx (nm "op_create2") b_op_create2 := by
 have hc : ∃ rs, guestCode (nm "op_create2") = some ((declPair Guest.Software.guestFn_op_create2).2.1,body_op_create2,rs) :=
  declPair_valid (List.getElem_mem (n := 600) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_op_create2
def table10 := BlsSlotCost.Core.extend table9 (nm "op_create2") b_op_create2
theorem table10_sound : TblSound σ guestCtx table10 := BlsSlotCost.Core.extend_sound table9_sound cc_op_create2
#print axioms cc_op_create2
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
