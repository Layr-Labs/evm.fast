import InitECandidate.Solver.HtFd.Replay

/-! Lookup of the improved prices recorded in `HtFd.htList`. -/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.HtFd
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open AcceptedCostOverrideRules
open Flapjack.Pancake.PanLang (MlS)

/-- The improved price of `f`, if any. -/
def htFind (f : MlS) : Option Nat := (htList.find? (fun p => decide (p.1 = f))).map Prod.snd

theorem htFind_state {f : MlS} {B : Nat} (h : htFind f = some B) : state.1.lookup f = some B := by
  unfold htFind at h
  obtain ⟨p, hp, rfl⟩ := Option.map_eq_some_iff.mp h
  have hf : p.1 = f := by simpa using List.find?_some hp
  have hm := List.mem_of_find?_eq_some hp
  have h2 := List.all_eq_true.mp htList_ok p hm
  have h3 : state.1.lookup p.1 = some p.2 := by simpa using h2
  rw [← hf]; exact h3

theorem htFind_cost {σ : Type} {f : MlS} {B : Nat} (h : htFind f = some B) :
    CalleeCost σ guestCtx f B :=
  calleeCost_of_tbl (state_sound (σ := σ)).1 (htFind_state h)

#print axioms htFind_cost

end InitECandidate.Solver.HtFd
