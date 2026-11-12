import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import Flapjack.Pancake.Semantics.PanProps.EvaluateAddClockEq

/-!
# Clock-independence of source evaluation

Evaluation is deterministic and reads the clock only to time out: two runs of the same
program from states that differ only in their clocks, neither of which times out, give the
same result and the same final state up to its clock (`det_clock`). This follows from
Flapjack's `evaluate_add_clock_eq` port.
-/

namespace InitECandidate.Solver.SourceCost.Arith
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)

variable {width : Nat} [NeZero width] {σ : Type}

theorem state_clock_clock (s : PanSemStateFiniteExact width σ) (a b : Nat) :
    ({ ({ s with clock := a } : PanSemStateFiniteExact width σ) with clock := b } :
      PanSemStateFiniteExact width σ) = { s with clock := b } := by
  cases s; rfl

theorem eval_add_clock (p : ProgHOL width) (s : PanSemStateFiniteExact width σ) (k : Nat)
    (h : (evaluateHOLFiniteState s p).1 ≠ some .timeOut) :
    evaluateHOLFiniteState { s with clock := s.clock + k } p =
      ((evaluateHOLFiniteState s p).1,
        { (evaluateHOLFiniteState s p).2 with clock := (evaluateHOLFiniteState s p).2.clock + k }) :=
  panPropsEvaluateAddClockEq p s _ _ k ⟨rfl, h⟩

/-- Two runs that differ only in the starting clock and do not time out agree. -/
theorem det_clock (p : ProgHOL width) (s : PanSemStateFiniteExact width σ) (c : Nat)
    (h1 : (evaluateHOLFiniteState s p).1 ≠ some .timeOut)
    (h2 : (evaluateHOLFiniteState { s with clock := c } p).1 ≠ some .timeOut) :
    (evaluateHOLFiniteState { s with clock := c } p).1 = (evaluateHOLFiniteState s p).1 ∧
      (evaluateHOLFiniteState { s with clock := c } p).2 =
        { (evaluateHOLFiniteState s p).2 with
          clock := (evaluateHOLFiniteState { s with clock := c } p).2.clock } := by
  by_cases hle : s.clock ≤ c
  · have he : ({ s with clock := c } : PanSemStateFiniteExact width σ) =
        { s with clock := s.clock + (c - s.clock) } := by
      congr 1; omega
    rw [he, eval_add_clock p s _ h1]
    exact ⟨rfl, by rw [state_clock_clock]⟩
  · have he : s = { ({ s with clock := c } : PanSemStateFiniteExact width σ) with
        clock := c + (s.clock - c) } := by
      rw [state_clock_clock]
      have : c + (s.clock - c) = s.clock := by omega
      rw [this]
    have key := eval_add_clock p { s with clock := c } (s.clock - c) h2
    rw [← he] at key
    rw [key]
    refine ⟨rfl, ?_⟩
    rw [state_clock_clock]

/-- The same, for two arbitrary clock updates of one state. -/
theorem det_clock2 (p : ProgHOL width) (s : PanSemStateFiniteExact width σ) (a b : Nat)
    (h1 : (evaluateHOLFiniteState { s with clock := a } p).1 ≠ some .timeOut)
    (h2 : (evaluateHOLFiniteState { s with clock := b } p).1 ≠ some .timeOut) :
    (evaluateHOLFiniteState { s with clock := b } p).1 =
        (evaluateHOLFiniteState { s with clock := a } p).1 ∧
      (evaluateHOLFiniteState { s with clock := b } p).2 =
        { (evaluateHOLFiniteState { s with clock := a } p).2 with
          clock := (evaluateHOLFiniteState { s with clock := b } p).2.clock } := by
  have := det_clock p { s with clock := a } b h1 (by rw [state_clock_clock]; exact h2)
  rw [state_clock_clock] at this
  exact this

end InitECandidate.Solver.SourceCost.Arith
