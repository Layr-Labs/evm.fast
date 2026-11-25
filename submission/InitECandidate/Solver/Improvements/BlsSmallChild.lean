import InitECandidate.Solver.Improvements.BlsSmallStart
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactChild
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "frame_start", 1142432515840379630422860055180011632137795966747612029797474), (nm "frame_open", 239807672958224171065), (nm "increment_nonce", 6277101735386681920455555159187925072843226291902091403236), (nm "mark_account_created", 340282366920938464441052043338374447207), (nm "destroy_storage", 6277101735386680784933296172305851154447142943680735740054), (nm "state_snapshot", 0)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "state_snapshot") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "destroy_storage") (B := 6277101735386680784933296172305851154447142943680735740054) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "mark_account_created") (B := 340282366920938464441052043338374447207) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "increment_nonce") (B := 6277101735386681920455555159187925072843226291902091403236) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "frame_open") (B := 239807672958224171065) (by decide_cbv))) BlsCompactStart.start_cost)

theorem child_cost {σ : Type} : CalleeCost σ guestCtx (nm "start_child") 1154986719311152993128589188878426346829767195699491455559043 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_start_child) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 585) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms child_cost
end BlsCompactChild
