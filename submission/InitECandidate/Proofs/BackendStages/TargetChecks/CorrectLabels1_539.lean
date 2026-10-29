import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_539
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_539
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_539_eq : LabToTarget.sectionLabels 440028 Reencode0_539.lines [] = (440500, localLabels1_539) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_539_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
