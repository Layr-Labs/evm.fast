import InitECandidate.Solver.Improvements.BlsSmallRun
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactFrame
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "run_precompile", 1129878312369606266581948944861635781991574558585670269994053), (nm "precompile_index", 18446744073709551618), (nm "emit_transfer_log", 442721857769029238850), (nm "memeq", 73786976294838206468), (nm "move_ether", 12554203470773363840911110318375850145686452583804182806475), (nm "u256_is_zero", 0)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "u256_is_zero") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "move_ether") (B := 12554203470773363840911110318375850145686452583804182806475) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "memeq") (B := 73786976294838206468) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "emit_transfer_log") (B := 442721857769029238850) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "precompile_index") (B := 18446744073709551618) (by decide_cbv))) BlsCompactRun.run_cost)

theorem prologue_cost {σ : Type} : CalleeCost σ guestCtx (nm "frame_prologue") 1142432515840379630422860055180011632137795966747612029797470 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_frame_prologue) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 580) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms prologue_cost
end BlsCompactFrame
