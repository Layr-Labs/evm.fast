import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_466
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_466_eq : LabToTarget.sectionLabels 391568 Initial466.lines [] = (392080, localLabels0_466) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_466_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
