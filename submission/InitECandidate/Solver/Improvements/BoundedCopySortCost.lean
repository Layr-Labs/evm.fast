import InitECandidate.Solver.Improvements.BoundedCopyCosts
import InitECandidate.Solver.Improvements.ThirdNamedCostReplay
import InitECandidate.Solver.SourceCost.Shards.All
import InitECandidate.Solver.Spec.Bridge

/-! Reprice the existing merge sort and sorted-key wrapper with the bounded copy steps. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace BoundedCopySortCost
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules

private def names : List String := ["sort_elems", "sorted_keys32"]
private def state : TblState :=
  ThirdNamedCostReplay.replayNamed names
    (overrideCost Shards.finalState (nm "memcpy") BoundedCopyCosts.copyPrice)

abbrev sortPrice : Nat := 408011621919904469204126277371857156418936296100332308536864
abbrev keysPrice : Nat := sortPrice + 1361129467683753854037965870464168361995

private theorem sound {σ : Type} : StateSound σ guestCtx state :=
  ThirdNamedCostReplay.replayNamed_sound names
    (overrideCost_sound Shards.finalState_sound_guest BoundedCopyCosts.memcpy_cost)

theorem sort_cost {σ : Type} : CalleeCost σ guestCtx (nm "sort_elems") sortPrice :=
  calleeCost_of_tbl (sound (σ := σ)).1 (by decide_cbv)

theorem keys_cost {σ : Type} : CalleeCost σ guestCtx (nm "sorted_keys32") keysPrice :=
  calleeCost_of_tbl (sound (σ := σ)).1 (by decide_cbv)

#print axioms sort_cost
#print axioms keys_cost
end BoundedCopySortCost
