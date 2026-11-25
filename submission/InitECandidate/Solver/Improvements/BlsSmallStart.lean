import InitECandidate.Solver.Improvements.BlsSmallPrologue
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactStart
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "frame_exception", 2), (nm "frame_prologue", 3716534747227113443991194369720429280790171258)], [], [])
private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact overrideCost_sound (overrideCost_sound stateSound_empty BlsCompactFrame.prologue_cost)
    (CompactCostReplay.accepted (f := nm "frame_exception") (B := 2) (by decide_cbv))
theorem start_cost {σ : Type} : CalleeCost σ guestCtx (nm "frame_start") 3716534747227113443991194369720429280790171262 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_frame_start) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 581) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms start_cost
end BlsCompactStart
