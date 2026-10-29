import InitE.SubmissionModel
import InitE.OracleReplay
import InitE.TargetTotality
import Guest.GasLimit

namespace InitE
open Flapjack

/-- A matching finite execution of the compiler theorem's target evaluator,
starting at the submitted bootstrap with the common zeroed machine state. -/
noncomputable def matchingExecutionAt (submission : Submission)
    (input : Guest.InputBlob) (outcome : HolOutcome) (events : List HolIoEvent)
    (steps : Nat) : Prop :=
  ∃ targetOutcome post finalFfi,
    evaluateTargetHOL submission.machineConfig (sourceFfi input) steps
      (submission.initialState input) = (.halt targetOutcome, post, finalFfi) ∧
    matchingResult input outcome events targetOutcome finalFfi.ioEvents

/-- The challenge certificate binds ROM and score to the fixed source semantics.
Infinity allows an input-dependent finite execution; it never permits divergence. -/
structure Certificate (submission : Submission) (claimed : NatE) : Prop where
  score : submission.K = claimed
  admitted : submission.Admitted
  correct : ∀ input : Guest.InputBlob,
    Guest.GasLimit.declaredGasLimit input ≤ 200000000 →
    ∀ outcome events,
      sourceBehaviour input = .terminate outcome events →
      coveredOutcome outcome →
      claimed.Within (matchingExecutionAt submission input outcome events)

/-- Exact behavior preservation is sufficient for the baseline infinity score.
Target totality makes this implication nonvacuous. -/
theorem certificate_of_exact_behaviour (submission : Submission)
    (score : submission.K = .infinity) (admitted : submission.Admitted)
    (correct : ∀ input outcome events,
      sourceBehaviour input = .terminate outcome events →
      ∀ behaviour, machineSemHOL submission.machineConfig (sourceFfi input)
        (submission.initialState input) behaviour → behaviour = .terminate outcome events) :
    Certificate submission .infinity := by
  refine ⟨score, admitted, ?_⟩
  intro input _ outcome events source covered
  have termination := target_termination_of_behaviour_eq submission.machineConfig
    (sourceFfi input) (submission.initialState input) outcome events
    (correct input outcome events source)
  obtain ⟨steps, post, finalFfi, execution, trace⟩ := termination
  refine ⟨steps, trivial, outcome, post, finalFfi, execution, ?_⟩
  rw [trace]
  exact matchingResult_refl input outcome events covered

end InitE
