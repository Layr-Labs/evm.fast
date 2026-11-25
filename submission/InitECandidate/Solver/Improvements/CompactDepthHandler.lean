import InitECandidate.Solver.Improvements.CompactChildEffects
import InitECandidate.Solver.MemSafe.Entry.Code
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace CompactDepthHandler
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Entry AcceptedCostOverrideRules
private def rows : TblState := ([(nm "state_restore", CompactChildEffects.restorePrice),
    (nm "scratch_release",0),(nm "frame_mem_release",0),(nm "refill_frame_state_gas",0),(nm "frame_halt",0)],[],[])
private theorem sound {σ : Type} : StateSound σ guestCtx rows := by
  unfold rows
  exact overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "frame_halt") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "refill_frame_state_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "frame_mem_release") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "scratch_release") (B := 0) (by decide_cbv))) CompactChildEffects.restore_cost
theorem cost {σ : Type} : Cost σ guestCtx d0Handler (CompactChildEffects.restorePrice+5) :=
  CompactCostReplay.program_cost sound (by decide_cbv)
#print axioms cost
end CompactDepthHandler
