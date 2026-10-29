import InitE.TargetBudget
import Flapjack.Compiler.Backend.Semantics.TargetProps.EvaluateAddClockIoEventsMono

namespace InitE
open Flapjack

/-- The literal target evaluator always has a behavior. In particular,
compiler correctness cannot hold vacuously because no behavior exists. -/
theorem target_has_behaviour {S Q σ : Type}
    (mc : MachineConfig 64 S Q) (ffi : HolFfiState σ) (ms : S) :
    ∃ behaviour, machineSemHOL mc ffi ms behaviour := by
  classical
  by_cases error : ∃ clock, (evaluateTargetHOL mc ffi clock ms).1 = .error
  · exact ⟨.fail, error⟩
  by_cases halt : ∃ clock outcome, (evaluateTargetHOL mc ffi clock ms).1 = .halt outcome
  · obtain ⟨clock, outcome, result⟩ := halt
    exact ⟨.terminate outcome (evaluateTargetHOL mc ffi clock ms).2.2.ioEvents,
      clock, (evaluateTargetHOL mc ffi clock ms).2.1,
      (evaluateTargetHOL mc ffi clock ms).2.2, by rw [← result], rfl⟩
  · let traces := fun ll => ∃ clock : Nat,
      HolLList.fromList (evaluateTargetHOL mc ffi clock ms).2.2.ioEvents = ll
    have chain : HolLList.lprefixChain traces := by
      rintro ll₁ ll₂ ⟨clock₁, rfl⟩ ⟨clock₂, rfl⟩
      rcases Nat.le_total clock₁ clock₂ with h | h
      · exact Or.inl ((HolLList.lprefix_fromList _ _).mpr
          (evaluateTargetAddClockIoEventsMono mc ffi clock₁ ms clock₂ h))
      · exact Or.inr ((HolLList.lprefix_fromList _ _).mpr
          (evaluateTargetAddClockIoEventsMono mc ffi clock₂ ms clock₁ h))
    refine ⟨.diverge (HolLList.buildLprefixLub traces), ?_,
      HolLList.buildLprefixLub_thm chain⟩
    intro clock
    refine ⟨(evaluateTargetHOL mc ffi clock ms).2.1,
      (evaluateTargetHOL mc ffi clock ms).2.2, ?_⟩
    have timeout : (evaluateTargetHOL mc ffi clock ms).1 = .timeOut := by
      cases h : (evaluateTargetHOL mc ffi clock ms).1 with
      | error => exact False.elim (error ⟨clock, h⟩)
      | halt outcome => exact False.elim (halt ⟨clock, outcome, h⟩)
      | timeOut => rfl
    rw [← timeout]

/-- A nonvacuous compiler behavior equality supplies a concrete termination
witness whenever the source behavior terminates. -/
theorem target_termination_of_behaviour_eq {S Q σ : Type}
    (mc : MachineConfig 64 S Q) (ffi : HolFfiState σ) (ms : S)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (correct : ∀ behaviour, machineSemHOL mc ffi ms behaviour →
      behaviour = .terminate outcome events) :
    machineSemHOL mc ffi ms (.terminate outcome events) := by
  obtain ⟨behaviour, execution⟩ := target_has_behaviour mc ffi ms
  exact (correct behaviour execution) ▸ execution

end InitE
