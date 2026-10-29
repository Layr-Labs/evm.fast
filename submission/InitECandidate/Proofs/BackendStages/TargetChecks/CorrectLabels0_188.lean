import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_188
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_188_eq : LabToTarget.sectionLabels 106864 Initial188.lines [] = (107140, localLabels0_188) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_188_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
