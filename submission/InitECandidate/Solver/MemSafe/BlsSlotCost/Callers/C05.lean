import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
variable {σ : Type}
def body_generic_call := (declPair Guest.Software.guestFn_generic_call).2.2
def b_generic_call : Nat := 75325220848024197878010612612292765640461375829306194946053
theorem cost_generic_call : Cost σ guestCtx body_generic_call b_generic_call := BlsSlotCost.Core.analyze_sound table4_sound (by cbv)
theorem cc_generic_call : CalleeCost σ guestCtx (nm "generic_call") b_generic_call := by
 have hc : ∃ rs, guestCode (nm "generic_call") = some ((declPair Guest.Software.guestFn_generic_call).2.1,body_generic_call,rs) :=
  declPair_valid (List.getElem_mem (n := 601) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact BlsSlotCost.Core.callee_of_body hc cost_generic_call
def table5 := BlsSlotCost.Core.extend table4 (nm "generic_call") b_generic_call
theorem table5_sound : TblSound σ guestCtx table5 := BlsSlotCost.Core.extend_sound table4_sound cc_generic_call
#print axioms cc_generic_call
end InitECandidate.Solver.MemSafe.BlsSlotCost.Callers
