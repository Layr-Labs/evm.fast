import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_op_create := (declPair Guest.Software.guestFn_op_create).2.2
def b_op_create : Nat := 75325220848024201023580813935416841157889217515515669985529
theorem cost_op_create : Cost σ guestCtx body_op_create b_op_create := BlsSlotCost.Core.analyze_sound table8_sound (by cbv)
theorem cc_op_create : CalleeCost σ guestCtx (nm "op_create") b_op_create := by
 have hc : ∃ rs, guestCode (nm "op_create") = some ((declPair Guest.Software.guestFn_op_create).2.1,body_op_create,rs) :=
  declPair_valid (List.getElem_mem (n := 599) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_op_create
def table9 := BlsSlotCost.Core.extend table8 (nm "op_create") b_op_create
theorem table9_sound : TblSound σ guestCtx table9 := BlsSlotCost.Core.extend_sound table8_sound cc_op_create
#print axioms cc_op_create
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
