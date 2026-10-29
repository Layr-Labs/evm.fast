import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_532
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_532
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_532_eq : LabToTarget.sectionLabels 433472 Initial532.lines [] = (434356, localLabels0_532) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_532_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
