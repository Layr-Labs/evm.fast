import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_153
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_153_eq : LabToTarget.sectionLabels 56036 Reencode0_153.lines [] = (57480, localLabels1_153) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_153_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
