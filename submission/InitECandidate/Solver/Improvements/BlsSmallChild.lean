import InitECandidate.Solver.Improvements.CompactFrameAccounts
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
private def small : TblState := ([(nm "frame_start", 3716534747227113443991194369720429280790171262), (nm "frame_open", 239807672958224171065), (nm "increment_nonce", 179669089823624876965997082397258484355768), (nm "mark_account_created", 340282366920938464441052043338374447207), (nm "destroy_storage", 4763953170485879405160648232122596721253), (nm "state_snapshot", 0)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "state_snapshot") (B := 0) (by decide_cbv))) CompactFrameAccounts.destroy_storage_cost) (CompactCostReplay.accepted (f := nm "mark_account_created") (B := 340282366920938464441052043338374447207) (by decide_cbv))) CompactNonce.nonce_cost) (CompactCostReplay.accepted (f := nm "frame_open") (B := 239807672958224171065) (by decide_cbv))) BlsCompactStart.start_cost)

theorem child_cost {σ : Type} : CalleeCost σ guestCtx (nm "start_child") 3716719520552474475686030208310774958469866562 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_start_child) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 585) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms child_cost
end BlsCompactChild
