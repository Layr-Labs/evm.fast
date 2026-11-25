import InitECandidate.Solver.Improvements.G1Wrappers
import InitECandidate.Solver.Improvements.G2Wrappers
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace G1MsmPre
open AcceptedCostOverrideRules

private def st : TblState := ([(nm "udivmod", 18446744073709551618), (nm "charge_gas", 0), (nm "bls_g1_msm_exec", 1402984198815029311481779213386584106759490), (nm "bls_g1_msm_discount", 0), (nm "alloc", 2)], [], [])

private theorem sound {σ : Type} : StateSound σ guestCtx st := by
  unfold st
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "bls_g1_msm_discount") (B := 0) (by decide_cbv))) G1Wrappers.msm) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "udivmod") (B := 18446744073709551618) (by decide_cbv)))

theorem pre_cost {σ : Type} : CalleeCost σ guestCtx (nm "pre_bls_g1_msm") 1402984198815029311481816106874731525862734 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_pre_bls_g1_msm) sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 815) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms pre_cost
end G1MsmPre

namespace G2MsmPre
open AcceptedCostOverrideRules

private def st : TblState := ([(nm "udivmod", 18446744073709551618), (nm "charge_gas", 0), (nm "bls_g2_msm_exec", 8383536673831161001729536045309187476563275), (nm "bls_g2_msm_discount", 0), (nm "alloc", 2)], [], [])

private theorem sound {σ : Type} : StateSound σ guestCtx st := by
  unfold st
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "bls_g2_msm_discount") (B := 0) (by decide_cbv))) G2Wrappers.msm) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "udivmod") (B := 18446744073709551618) (by decide_cbv)))

theorem pre_cost {σ : Type} : CalleeCost σ guestCtx (nm "pre_bls_g2_msm") 8383536673831161001729572938797334895666519 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_pre_bls_g2_msm) sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 817) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms pre_cost
end G2MsmPre
