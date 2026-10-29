import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_576
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_576
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_576_eq : LabToTarget.sectionLabels 475632 Reencode0_576.lines [] = (477216, localLabels1_576) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_576_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
