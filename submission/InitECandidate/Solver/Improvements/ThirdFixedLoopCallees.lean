import InitECandidate.Solver.Improvements.ThirdFqReduceIdentity
import InitECandidate.Solver.Improvements.ThirdFqOuterIdentity
import InitECandidate.Solver.Spec.Bridge
import InitECandidate.Solver.Spec.Code
import InitECandidate.Solver.Improvements.ThirdSourceAnalyzer

/-!
Concrete accepted table and actual guest-entry bindings for the fixed Fq loops.
The only outer-body bounds reused are the unchanged accepted analyzer bounds;
the old inner-loop allowances are retained. This heavy bridge is separate
from the locally checkable fixed-loop proof cores.
Unreplayed until checked against the complete accepted context.
-/
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace ThirdFixedLoopCallees
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

abbrev smallCost : Nat := ThirdFqReduceCore.acceptedSmall
abbrev reduceCost : Nat := ThirdFqReduceCore.tighterCost smallCost 3 3
abbrev memcpyCost : Nat := 73786976294838206468
abbrev mulCost : Nat := ThirdFqOuterCore.tighterCost
  (ThirdFqOuterCore.acceptedOuterB false) reduceCost memcpyCost
abbrev sqrCost : Nat := ThirdFqOuterCore.tighterCost
  (ThirdFqOuterCore.acceptedOuterB true) reduceCost memcpyCost

theorem code_reduce : guestCode (AcceptedIvvhCalleeCore.nm "fq12_reduce") =
    some (ThirdFqReduceCore.params, ThirdFqReduceCore.reduceBody, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 658) (by decide))
    ⟨_, rfl⟩ ThirdFqReduceIdentity.actual_entry

theorem code_mul : guestCode (AcceptedIvvhCalleeCore.nm "fq12_mul") =
    some (ThirdFqOuterCore.params false, ThirdFqOuterCore.body false, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 659) (by decide))
    ⟨_, rfl⟩ ThirdFqOuterIdentity.mul_entry

theorem code_sqr : guestCode (AcceptedIvvhCalleeCore.nm "fq12_sqr") =
    some (ThirdFqOuterCore.params true, ThirdFqOuterCore.body true, .one) :=
  code_of_entry (List.getElem_mem (l := Guest.Software.guestAst) (n := 660) (by decide))
    ⟨_, rfl⟩ ThirdFqOuterIdentity.sqr_entry

theorem reduce_callees {σ : Type} : ThirdFqReduceCore.CalleeCosts σ guestCtx smallCost 3 3 where
  fq_mul_small := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fq_add := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  fq_sub := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)

theorem reduce_cost {σ : Type} : CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "fq12_reduce") reduceCost :=
  ThirdFqReduceCore.callee_cost_from_callees reduce_callees
    (by rw [guestCtx_code]; exact code_reduce)

theorem outer_callees {σ : Type} : ThirdFqOuterCore.CalleeCosts σ guestCtx reduceCost memcpyCost where
  reduce := reduce_cost
  memcpy := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_mark := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  heap_release := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)
  alloc := calleeCost_of_tbl (Shards.finalState_sound_guest (σ := σ)).1 (by rfl)

theorem accepted_outer_cost {σ : Type} (square : Bool) :
    Cost σ guestCtx (ThirdFqOuterCore.outerBody square) (ThirdFqOuterCore.acceptedOuterB square) := by
  apply ThirdSourceAnalyzer.cost_guest_costA
  cases square <;> decide_cbv

theorem mul_cost {σ : Type} : CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "fq12_mul") mulCost :=
  ThirdFqOuterCore.callee_cost_from_outer outer_callees (accepted_outer_cost false)
    (by rw [guestCtx_code]; exact code_mul)

theorem sqr_cost {σ : Type} : CalleeCost σ guestCtx (AcceptedIvvhCalleeCore.nm "fq12_sqr") sqrCost :=
  ThirdFqOuterCore.callee_cost_from_outer outer_callees (accepted_outer_cost true)
    (by rw [guestCtx_code]; exact code_sqr)

#print axioms reduce_cost
#print axioms accepted_outer_cost
#print axioms mul_cost
#print axioms sqr_cost
end ThirdFixedLoopCallees
