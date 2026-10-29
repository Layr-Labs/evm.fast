import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_380
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_380
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_380_eq : LabToTarget.sectionLabels 318232 Reencode0_380.lines [] = (318964, localLabels1_380) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_380_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
