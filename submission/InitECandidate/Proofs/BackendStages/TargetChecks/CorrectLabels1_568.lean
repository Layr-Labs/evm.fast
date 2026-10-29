import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_568
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_568_eq : LabToTarget.sectionLabels 468524 Reencode0_568.lines [] = (468952, localLabels1_568) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_568_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
