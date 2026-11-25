import InitECandidate.Solver.Improvements.BlsSmallChild
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactGeneric
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "start_child", 1154986719311152993128589188878426346829767195699491455559043), (nm "increment_nonce", 6277101735386681920455555159187925072843226291902091403236), (nm "account_deployable", 2269002823772238517049334197697169244371909), (nm "charge_state_gas", 1), (nm "is_account_alive", 1134841694253040196989108150891922996633160), (nm "warm_address", 340282366920938464441052043338374447207), (nm "u256_lt", 0), (nm "get_account", 1134841694253040196989034363915628158426694), (nm "child_message", 73786976294838206473), (nm "frame_mem_mark", 0), (nm "scratch_mark", 0), (nm "stack_push", 73786976294838206472), (nm "credit_state_gas_refund", 1), (nm "set_retdata", 73786976294838206472)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "set_retdata") (B := 73786976294838206472) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "credit_state_gas_refund") (B := 1) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "stack_push") (B := 73786976294838206472) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "scratch_mark") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "frame_mem_mark") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "child_message") (B := 73786976294838206473) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "get_account") (B := 1134841694253040196989034363915628158426694) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_lt") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "warm_address") (B := 340282366920938464441052043338374447207) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "is_account_alive") (B := 1134841694253040196989108150891922996633160) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "charge_state_gas") (B := 1) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "account_deployable") (B := 2269002823772238517049334197697169244371909) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "increment_nonce") (B := 6277101735386681920455555159187925072843226291902091403236) (by decide_cbv))) BlsCompactChild.child_cost)

theorem generic_call_cost {σ : Type} : CalleeCost σ guestCtx (nm "generic_call") 1154986719311152993128589188878426346829988556628375970178468 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_generic_call) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 601) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms generic_call_cost
theorem generic_create_cost {σ : Type} : CalleeCost σ guestCtx (nm "generic_create") 1167540922781926361508526793842042046467666560736533765070392 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_generic_create) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 598) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms generic_create_cost
end BlsCompactGeneric
