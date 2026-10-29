import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_512
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_512
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_512_eq : LabToTarget.sectionLabels 416980 Reencode0_512.lines [] = (417852, localLabels1_512) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_512_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
