import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_163
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_163
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_163_eq : LabToTarget.sectionLabels 95656 Reencode0_163.lines [] = (97928, localLabels1_163) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_163_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
