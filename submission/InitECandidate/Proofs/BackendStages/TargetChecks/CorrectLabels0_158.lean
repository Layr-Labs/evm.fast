import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_158
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_158
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_158_eq : LabToTarget.sectionLabels 90956 Initial158.lines [] = (92220, localLabels0_158) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_158_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
