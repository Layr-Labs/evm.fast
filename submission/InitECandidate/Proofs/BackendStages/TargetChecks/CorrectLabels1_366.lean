import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_366
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_366
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_366_eq : LabToTarget.sectionLabels 307760 Reencode0_366.lines [] = (308140, localLabels1_366) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_366_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
