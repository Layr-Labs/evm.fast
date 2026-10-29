import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_420
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_420
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_420_eq : LabToTarget.sectionLabels 342228 Reencode0_420.lines [] = (343256, localLabels1_420) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_420_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
