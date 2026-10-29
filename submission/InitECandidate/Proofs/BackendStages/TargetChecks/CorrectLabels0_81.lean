import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_81
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_81_eq : LabToTarget.sectionLabels 9192 Initial81.lines [] = (9256, localLabels0_81) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_81_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
