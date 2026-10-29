import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_97
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_97_eq : LabToTarget.sectionLabels 11960 Initial97.lines [] = (12024, localLabels0_97) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_97_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
