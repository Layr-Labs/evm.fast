import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_125
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_125_eq : LabToTarget.sectionLabels 20928 Reencode0_125.lines [] = (21008, localLabels1_125) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_125_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
