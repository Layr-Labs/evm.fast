import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C07
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_op_callcode := (declPair Guest.Software.guestFn_op_callcode).2.2
def b_op_callcode : Nat := 75325220848024199363002862538531896313709445159019308466922
theorem cost_op_callcode : Cost σ guestCtx body_op_callcode b_op_callcode := BlsSlotCost.Core.analyze_sound table7_sound (by cbv)
theorem cc_op_callcode : CalleeCost σ guestCtx (nm "op_callcode") b_op_callcode := by
 have hc : ∃ rs, guestCode (nm "op_callcode") = some ((declPair Guest.Software.guestFn_op_callcode).2.1,body_op_callcode,rs) :=
  declPair_valid (List.getElem_mem (n := 604) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_op_callcode
def table8 := BlsSlotCost.Core.extend table7 (nm "op_callcode") b_op_callcode
theorem table8_sound : TblSound σ guestCtx table8 := BlsSlotCost.Core.extend_sound table7_sound cc_op_callcode
#print axioms cc_op_callcode
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
