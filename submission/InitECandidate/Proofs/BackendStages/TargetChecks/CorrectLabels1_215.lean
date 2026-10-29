import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_215
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_215
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_215_eq : LabToTarget.sectionLabels 132108 Reencode0_215.lines [] = (132176, localLabels1_215) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_215_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
