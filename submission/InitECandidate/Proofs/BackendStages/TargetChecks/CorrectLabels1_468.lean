import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_468
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_468
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_468_eq : LabToTarget.sectionLabels 392260 Reencode0_468.lines [] = (392432, localLabels1_468) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_468_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
