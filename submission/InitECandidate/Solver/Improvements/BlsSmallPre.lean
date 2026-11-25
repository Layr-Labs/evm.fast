import InitECandidate.Solver.Improvements.BlsSmallExec
import InitECandidate.Solver.Improvements.CompactCostReplay
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace BlsCompactPre
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
private def small : TblState := ([(nm "bls_pairing_exec", 351517697181654127884484229384441537804026225832393100185421), (nm "alloc", 2), (nm "charge_gas", 0), (nm "udivmod", 18446744073709551618)], [], [])

private theorem small_sound {σ : Type} : StateSound σ guestCtx small := by
  unfold small
  exact (overrideCost_sound (overrideCost_sound (overrideCost_sound (overrideCost_sound stateSound_empty (CompactCostReplay.accepted (f := nm "udivmod") (B := 18446744073709551618) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "charge_gas") (B := 0) (by decide_cbv))) (CompactCostReplay.accepted (f := nm "alloc") (B := 2) (by decide_cbv))) BlsCompactExec.exec_cost)

theorem pre_cost {σ : Type} : CalleeCost σ guestCtx (nm "pre_bls_pairing") 351517697181654127884484229384441537804044672576466809737045 :=
  CompactCostReplay.callee_cost (p := declPair Guest.Software.guestFn_pre_bls_pairing) small_sound
    (declPair_valid (List.getElem_mem (l := Guest.Software.guestAst) (n := 818) (by decide)) ⟨_, rfl⟩)
    (by decide_cbv)
#print axioms pre_cost
end BlsCompactPre
