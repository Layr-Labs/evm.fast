import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_204
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_204_eq : LabToTarget.sectionLabels 116304 Reencode0_204.lines [] = (116592, localLabels1_204) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_204_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
