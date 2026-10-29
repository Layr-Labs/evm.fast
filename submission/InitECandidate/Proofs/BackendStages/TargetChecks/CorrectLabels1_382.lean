import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_382
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_382_eq : LabToTarget.sectionLabels 319824 Reencode0_382.lines [] = (320600, localLabels1_382) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_382_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
