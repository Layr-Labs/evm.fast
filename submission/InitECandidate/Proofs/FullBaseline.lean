import InitECandidate.Proofs.NativeBaseline
import InitECandidate.Proofs.StartupEnvironment
import InitECandidate.Proofs.BootstrapTrace
import InitECandidate.Proofs.BootstrapComposition

namespace InitE
open InitECandidate.Proofs
open Flapjack

/-- The original submitted image, including its real zero-RAM bootstrap,
implements every nonfailing behavior of the challenge source. -/
theorem full_baseline_correct (input : Guest.InputBlob)
    (nonfail : sourceBehaviour input ≠ HolBehaviour.fail) :
    ∀ behaviour,
      machineSemHOL baselineMachineConfig (sourceFfi input)
        (baselineInitialState input) behaviour →
      behaviour = sourceBehaviour input := by
  obtain ⟨count, post, shift, related⟩ := BootstrapTrace.full_evaluator
    (sourceFfi input) (baselineInitialState input) (baselineInitialState_related input)
  exact Bootstrap.behavior_property_from_clock_shift (sourceFfi input) shift
    (fun behaviour => behaviour = sourceBehaviour input)
    (native_baseline_correct input post related nonfail)

/-- Source termination yields finite target termination from the submitted
bootstrap entry point, with the same outcome and observable events. -/
theorem full_baseline_terminates (input : Guest.InputBlob)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events) :
    machineSemHOL baselineMachineConfig (sourceFfi input)
      (baselineInitialState input) (.terminate outcome events) ∧
      targetTerminatesWithin .infinity baselineMachineConfig (sourceFfi input)
        (baselineInitialState input) := by
  obtain ⟨count, post, shift, related⟩ := BootstrapTrace.full_evaluator
    (sourceFfi input) (baselineInitialState input) (baselineInitialState_related input)
  have terminal := Bootstrap.termination_from_clock_shift (sourceFfi input) shift
    outcome events (native_baseline_terminates input post related outcome events source).1
  exact ⟨terminal, (target_termination_iff_infinity _ _ _).mp ⟨outcome, events, terminal⟩⟩

end InitE
