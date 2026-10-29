import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_380
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_380
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_380_eq : LabToTarget.sectionLabels 318228 Initial380.lines [] = (318960, localLabels0_380) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_380_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
