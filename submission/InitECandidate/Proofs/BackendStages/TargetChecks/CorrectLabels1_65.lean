import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_65
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_65_eq : LabToTarget.sectionLabels 1940 Reencode0_65.lines [] = (5244, localLabels1_65) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_65_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
