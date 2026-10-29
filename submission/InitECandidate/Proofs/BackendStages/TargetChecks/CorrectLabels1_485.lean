import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_485
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_485
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_485_eq : LabToTarget.sectionLabels 398880 Reencode0_485.lines [] = (399764, localLabels1_485) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_485_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
