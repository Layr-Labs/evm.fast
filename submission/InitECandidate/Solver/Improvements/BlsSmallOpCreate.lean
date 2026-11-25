import InitECandidate.Solver.Improvements.BlsSmallGeneric
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactOpCreate
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "words_of", 2), (nm "stack_pop", 0), (nm "sat_word", 0), (nm "require_not_static", 0), (nm "pc_add", 0), (nm "get_account", 1134841694253040196989034363915628158426694), (nm "generic_create", 1167540922781926361508526793842042046467666560736533765070392), (nm "extend_memory_cost1", 20), (nm "extend_memory", 147573952589676412941), (nm "compute_contract_address", 680564733841876927664618977811918487621), (nm "charge_gas", 0), (nm "alloc", 2), (nm "add_sat", 0)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "add_sat") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "compute_contract_address") (B := 680564733841876927664618977811918487621) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "extend_memory") (B := 147573952589676412941) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "extend_memory_cost1") (B := 20) (by decide_cbv))) BlsCompactGeneric.generic_create_cost) (CompactCostReplay.accepted (f := nm "get_account") (B := 1134841694253040196989034363915628158426694) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "pc_add") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "require_not_static") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "sat_word") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "stack_pop") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "words_of") (B := 2) (by decide_cbv)))

theorem op_cost {σ : Type} : CalleeCost σ guestCtx (nm "op_create") 1167540922781926362644049052828924120384513117582563518397688 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_op_create) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 599) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms op_cost
end BlsCompactOpCreate
