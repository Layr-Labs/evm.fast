import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_135
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_135
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_135_eq : LabToTarget.sectionLabels 27764 Reencode0_135.lines [] = (28340, localLabels1_135) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_135_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
