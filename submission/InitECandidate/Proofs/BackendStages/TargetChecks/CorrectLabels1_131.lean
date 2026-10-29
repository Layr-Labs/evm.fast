import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_131
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_131_eq : LabToTarget.sectionLabels 26200 Reencode0_131.lines [] = (26380, localLabels1_131) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_131_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
