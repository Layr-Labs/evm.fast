import InitECandidate.Solver.Improvements.BlsSmallGeneric
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactOpCallcode
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "warm_address", 340282366920938464441052043338374447207), (nm "u256_lt", 0), (nm "u256_is_zero", 0), (nm "to_address_masked", 9), (nm "stack_push", 73786976294838206472), (nm "stack_pop", 0), (nm "set_retdata", 73786976294838206472), (nm "sat_word", 0), (nm "pc_add", 0), (nm "is_warm_address", 92233720368547758088), (nm "get_account", 1134841694253040196989034363915628158426694), (nm "generic_call", 1154986719311152993128589188878426346829988556628375970178468), (nm "extend_memory_cost2", 42), (nm "extend_memory", 147573952589676412941), (nm "ext_code_of", 1135181976619961135454047265025251528974046), (nm "charge_gas", 0), (nm "calculate_message_call_gas", 4), (nm "calculate_delegation_cost", 1135181976619961135454213285721914914938609), (nm "add_sat", 0)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "add_sat") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "calculate_delegation_cost") (B := 1135181976619961135454213285721914914938609) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "calculate_message_call_gas") (B := 4) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "ext_code_of") (B := 1135181976619961135454047265025251528974046) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "extend_memory") (B := 147573952589676412941) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "extend_memory_cost2") (B := 42) (by decide_cbv))) BlsCompactGeneric.generic_call_cost) (CompactCostReplay.accepted (f := nm "get_account") (B := 1134841694253040196989034363915628158426694) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "is_warm_address") (B := 92233720368547758088) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pc_add") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "sat_word") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "set_retdata") (B := 73786976294838206472) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "stack_pop") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "stack_push") (B := 73786976294838206472) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "to_address_masked") (B := 9) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_is_zero") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_lt") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "warm_address") (B := 340282366920938464441052043338374447207) (by decide_cbv)))

theorem op_cost {σ : Type} : CalleeCost σ guestCtx (nm "op_callcode") 1154986719311152996534475401105230691656405383050805545583345 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_op_callcode) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 604) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms op_cost
end BlsCompactOpCallcode
