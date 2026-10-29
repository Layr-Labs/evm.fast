import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_171
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_171
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_171_eq : LabToTarget.sectionLabels 101512 Reencode0_171.lines [] = (101996, localLabels1_171) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_171_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
