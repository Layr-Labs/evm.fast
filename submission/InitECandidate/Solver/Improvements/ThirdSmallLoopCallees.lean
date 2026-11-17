import InitECandidate.Solver.Improvements.ThirdFixedLoopCallees
import InitECandidate.Solver.Improvements.ThirdFqSmallCallee

/-! Specialize the existing 11/23-loop bounds with the independently proved
64-bit small-multiplier bound. Original bridge names and values remain intact.
This adapter needs replay with the accepted heavy dependency closure. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace ThirdSmallLoopCallees
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedIvvhCalleeCore (nm)

abbrev smallCost : Nat := 577
abbrev reduceCost : Nat := ThirdFqReduceCore.tighterCost smallCost 3 3
abbrev memcpyCost : Nat := ThirdFixedLoopCallees.memcpyCost
abbrev mulCost : Nat := ThirdFqOuterCore.tighterCost
  (ThirdFqOuterCore.acceptedOuterB false) reduceCost memcpyCost
abbrev sqrCost : Nat := ThirdFqOuterCore.tighterCost
  (ThirdFqOuterCore.acceptedOuterB true) reduceCost memcpyCost

theorem small_cost {σ : Type} : CalleeCost σ guestCtx (nm "fq_mul_small") smallCost :=
  ThirdFqSmallCallee.small_cost

theorem reduce_callees {σ : Type} : ThirdFqReduceCore.CalleeCosts σ guestCtx smallCost 3 3 where
  fq_mul_small := small_cost
  fq_add := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fq_sub := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)

theorem reduce_cost {σ : Type} : CalleeCost σ guestCtx (nm "fq12_reduce") reduceCost :=
  ThirdFqReduceCore.callee_cost_from_callees reduce_callees
    (by change guestCode _ = _; exact ThirdFixedLoopCallees.code_reduce)

theorem outer_callees {σ : Type} : ThirdFqOuterCore.CalleeCosts σ guestCtx reduceCost memcpyCost where
  reduce := reduce_cost
  memcpy := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_mark := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_release := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  alloc := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)

theorem mul_cost {σ : Type} : CalleeCost σ guestCtx (nm "fq12_mul") mulCost :=
  ThirdFqOuterCore.callee_cost_from_outer outer_callees (ThirdFixedLoopCallees.accepted_outer_cost false)
    (by change guestCode _ = _; exact ThirdFixedLoopCallees.code_mul)

theorem sqr_cost {σ : Type} : CalleeCost σ guestCtx (nm "fq12_sqr") sqrCost :=
  ThirdFqOuterCore.callee_cost_from_outer outer_callees (ThirdFixedLoopCallees.accepted_outer_cost true)
    (by change guestCode _ = _; exact ThirdFixedLoopCallees.code_sqr)

#print axioms reduce_cost
#print axioms mul_cost
#print axioms sqr_cost
end ThirdSmallLoopCallees
