import InitECandidate.Solver.Improvements.ThirdSmallLoopCallees
import InitECandidate.Solver.Improvements.AcceptedEcpMulCalleeLight
import InitECandidate.Solver.Improvements.ThirdMillerCallee
import InitECandidate.Solver.Improvements.ThirdMillerParamCore
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay

/-!
Concrete combined crypto cost table. The fixed 11/23/256/64-loop theorems are
inserted only after the callees on which they depend have been refreshed.
Manual fixed-loop entries are never passed back to the generic loop analyzer.
Every exported soundness theorem discharges its leaf premises from actual
callee proofs, not axioms. This complete adapter still needs Lean replay.
-/
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace ThirdCombinedSmallCryptoTable
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
open AcceptedIvvhCalleeCore (nm)

def preNames : List String :=
  ["fe_mul", "fe_mul_small", "fe_sqr", "ecp_double", "ecp_add", "ecp_linefunc", "fq12_frob"]

def postNames : List String :=
  ["bn254_g1_add", "bn254_g1_mul", "fq12_pow_words", "fq12_twist", "bn254_pairing_check",
   "pre_alt_bn128_add", "pre_alt_bn128_mul", "pre_alt_bn128_pairing_check",
   "run_precompile", "frame_prologue", "frame_start", "start_child",
   "generic_call", "generic_create", "op_call", "op_callcode", "op_create",
   "op_create2", "op_delegatecall", "op_staticcall", "frame_open", "depth0_prepare"]

def fieldSeed : TblState :=
  overrideCost
    (overrideCost
      (overrideCost (overrideCost Shards.finalState (nm "fq_mul_small") ThirdSmallLoopCallees.smallCost) (nm "fq12_reduce") ThirdSmallLoopCallees.reduceCost)
      (nm "fq12_mul") ThirdSmallLoopCallees.mulCost)
    (nm "fq12_sqr") ThirdSmallLoopCallees.sqrCost

theorem fieldSeed_sound {σ : Type} : StateSound σ guestCtx fieldSeed :=
  overrideCost_sound
    (overrideCost_sound
      (overrideCost_sound (overrideCost_sound (Shards.finalState_sound_guest (σ := σ))
          ThirdSmallLoopCallees.small_cost) ThirdSmallLoopCallees.reduce_cost)
      ThirdSmallLoopCallees.mul_cost)
    ThirdSmallLoopCallees.sqr_cost

def preState : TblState := ThirdNamedCostReplay.replayNamed preNames fieldSeed

theorem preState_sound {σ : Type} : StateSound σ guestCtx preState :=
  ThirdNamedCostReplay.replayNamed_sound preNames fieldSeed_sound

def budget (name : String) : Nat := (preState.1.lookup (nm name)).getD 0

def ecpBudgets : AcceptedEcpMulCore.Budgets :=
  ⟨budget "alloc", budget "heap_mark", budget "heap_release", budget "ecp_set_inf",
   budget "memcpy", budget "u256_bit_length", budget "u256_bit",
   budget "ecp_add", budget "ecp_double"⟩

theorem ecp_callees {σ : Type} : AcceptedEcpMulCore.CalleeCosts ecpBudgets σ guestCtx where
  alloc := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  heapMark := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  heapRelease := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  setInf := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  copy := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  bitLength := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  bit := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  add := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)
  double := calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)

def ecpCost : Nat := AcceptedEcpMulCore.tighterCost ecpBudgets

theorem ecp_cost {σ : Type} : CalleeCost σ guestCtx (nm "ecp_mul") ecpCost :=
  AcceptedEcpMulCalleeLight.callee_cost_with ecp_callees

theorem miller_callees {σ : Type} : ThirdMillerParamCore.Callees σ guestCtx budget := by
  intro f hf
  simp only [AcceptedMillerCore.calleeNames, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals exact calleeCost_of_tbl (preState_sound (σ := σ)).1 (by rfl)

def millerCost : Nat := ThirdMillerParamCore.tighterCost budget

theorem miller_cost {σ : Type} : CalleeCost σ guestCtx (nm "bn254_miller_raw") millerCost :=
  ThirdMillerParamCore.callee_cost_from_callees miller_callees
    (by change guestCode _ = _; exact ThirdMillerCallee.code_miller)

theorem ecpCost_eq : ecpCost = 76979664972139560975855402 := by
  decide +kernel

theorem millerCost_eq : millerCost = 47465206495597605116636846 := by
  decide +kernel

def countSeed : TblState :=
  overrideCost (overrideCost preState (nm "ecp_mul") ecpCost)
    (nm "bn254_miller_raw") millerCost

theorem countSeed_sound {σ : Type} : StateSound σ guestCtx countSeed :=
  overrideCost_sound (overrideCost_sound preState_sound ecp_cost) miller_cost

def state : TblState := ThirdNamedCostReplay.replayNamed postNames countSeed

theorem sound {σ : Type} : StateSound σ guestCtx state :=
  ThirdNamedCostReplay.replayNamed_sound postNames countSeed_sound

theorem callee_cost {σ : Type} {f : Flapjack.Pancake.PanLang.MlS} {B : Nat}
    (h : state.1.lookup f = some B) : CalleeCost σ guestCtx f B :=
  calleeCost_of_tbl (sound (σ := σ)).1 h

#print axioms ecp_cost
#print axioms miller_cost
#print axioms sound
end ThirdCombinedSmallCryptoTable
