import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_213
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_213
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_213_eq : LabToTarget.sectionLabels 132008 Reencode0_213.lines [] = (132056, localLabels1_213) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_213_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
