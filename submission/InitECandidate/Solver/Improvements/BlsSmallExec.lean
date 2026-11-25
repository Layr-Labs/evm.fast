import InitECandidate.Solver.Improvements.BlsSmallPair
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactExec
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "pair_accumulate", 70466562361570500692091), (nm "memzero", 73786976294838206468), (nm "fp12_is_one", 295147905179352825887), (nm "fp12_final_exp", 40833884030512616869669955254808638969474), (nm "g2_subgroup_check", 16333553612205046397283921632258682789856), (nm "g2_decode", 147573952589676413830), (nm "g1_subgroup_check", 2722258935367507759763708635462500354835), (nm "heap_release", 0), (nm "g1_decode", 36893488147419103623), (nm "fp12_set_one", 221360928884514619412), (nm "alloc", 2), (nm "heap_mark", 0)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "heap_mark") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "fp12_set_one") (B := 221360928884514619412) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "g1_decode") (B := 36893488147419103623) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "heap_release") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "g1_subgroup_check") (B := 2722258935367507759763708635462500354835) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "g2_decode") (B := 147573952589676413830) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "g2_subgroup_check") (B := 16333553612205046397283921632258682789856) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "fp12_final_exp") (B := 40833884030512616869669955254808638969474) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "fp12_is_one") (B := 295147905179352825887) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "memzero") (B := 73786976294838206468) (by decide_cbv))) BlsCompactPair.pair_cost)

theorem exec_cost {σ : Type} : CalleeCost σ guestCtx (nm "bls_pairing_exec") 351517697181654127884484229384441537804026225832393100185421 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_bls_pairing_exec) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 806) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms exec_cost
end BlsCompactExec
