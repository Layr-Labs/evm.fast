import InitECandidate.Solver.Improvements.BlsSmallGeneric
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactOpCreate2
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "words_of", 2), (nm "u256_to_be32", 20), (nm "stack_pop", 0), (nm "sat_word", 0), (nm "require_not_static", 0), (nm "pc_add", 0), (nm "generic_create", 1167540922781926361508526793842042046467666560736533765070392), (nm "extend_memory_cost1", 20), (nm "extend_memory", 147573952589676412941), (nm "compute_create2_contract_address", 1361129467683753854997196562297065046099), (nm "charge_gas", 0), (nm "alloc", 2), (nm "add_sat", 0)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "add_sat") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "compute_create2_contract_address") (B := 1361129467683753854997196562297065046099) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "extend_memory") (B := 147573952589676412941) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "extend_memory_cost1") (B := 20) (by decide_cbv))) BlsCompactGeneric.generic_create_cost) (CompactCostReplay.accepted (f := nm "pc_add") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "require_not_static") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "sat_word") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "stack_pop") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "u256_to_be32") (B := 20) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "words_of") (B := 2) (by decide_cbv)))

theorem op_cost {σ : Type} : CalleeCost σ guestCtx (nm "op_create2") 1167540922781926361509887923309725800322811331251420506529496 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_op_create2) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 600) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms op_cost
end BlsCompactOpCreate2
