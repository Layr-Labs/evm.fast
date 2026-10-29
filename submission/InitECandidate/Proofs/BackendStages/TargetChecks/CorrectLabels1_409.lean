import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_409
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_409_eq : LabToTarget.sectionLabels 336940 Reencode0_409.lines [] = (337296, localLabels1_409) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_409_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
