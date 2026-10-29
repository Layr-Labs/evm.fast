import InitECandidate.Proofs.BaselineCertificate
import InitECandidate.Proofs.PanInstallation

namespace InitE
open Flapjack Flapjack.Compiler.Encoders.RiscV.Target

/-- All compiler installation premises for the fixed original source are
proved; none is an assumption on the challenge input. -/
theorem baseline_installed (input : Guest.InputBlob) :
    BaselineInstallation input baselineOutput baselineMachineConfig
      baselineInstalledState InitECandidate.nativeCode InitECandidate.bitmaps
      baselineConfig baselineHeapLen baselineAdj2 baselineAdj4 3788 0 :=
  baseline_installation input (baseline_pan_installed input)

/-- The upstream compiler theorem applies to every concrete native-entry
machine reached by the proved bootstrap. -/
theorem native_baseline_correct (input : Guest.InputBlob)
    (ms : RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget installedAsm ms)
    (nonfail : sourceBehaviour input ≠ HolBehaviour.fail) :
    ∀ behaviour, machineSemHOL baselineMachineConfig (sourceFfi input) ms behaviour →
      behaviour = sourceBehaviour input :=
  baseline_endpoint_behaviour_eq input ms related (baseline_installed input) nonfail

/-- Exact source termination supplies an actual finite target termination,
with the same outcome and events and a literal infinite budget. -/
theorem native_baseline_terminates (input : Guest.InputBlob)
    (ms : RiscV.L3.riscv_state)
    (related : targetStateRel riscvTarget installedAsm ms)
    (outcome : HolOutcome) (events : List HolIoEvent)
    (source : sourceBehaviour input = .terminate outcome events) :
    machineSemHOL baselineMachineConfig (sourceFfi input) ms (.terminate outcome events) ∧
      targetTerminatesWithin .infinity baselineMachineConfig (sourceFfi input) ms :=
  baseline_endpoint_terminates input ms related (baseline_installed input) outcome events source

end InitE
