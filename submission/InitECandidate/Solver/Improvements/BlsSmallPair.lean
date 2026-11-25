import InitECandidate.Solver.Improvements.BlsMillerPrice
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactPair
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private def small : TblState := ([(nm "heap_release", 0), (nm "fp12_mul", 221360928884514626150), (nm "pair_miller_loop", 70171414456391135997305), (nm "g2_normalize", 73786976294844137863), (nm "g1_normalize", 5930754), (nm "alloc", 2), (nm "heap_mark", 0), (nm "g2_is_inf", 1), (nm "g1_is_inf", 1)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "g1_is_inf") (B := 1) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "g2_is_inf") (B := 1) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "heap_mark") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "g1_normalize") (B := 5930754) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "g2_normalize") (B := 73786976294844137863) (by decide_cbv))) BlsMillerPrice.callee_cost) (CompactCostReplay.accepted (f := nm "fp12_mul") (B := 221360928884514626150) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "heap_release") (B := 0) (by decide_cbv)))

theorem pair_cost {σ : Type} : CalleeCost σ guestCtx (nm "pair_accumulate") 70466562361570500692091 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_pair_accumulate) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 786) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms pair_cost
end BlsCompactPair
