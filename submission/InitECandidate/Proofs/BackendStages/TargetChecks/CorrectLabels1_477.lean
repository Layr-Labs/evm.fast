import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_477
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_477_eq : LabToTarget.sectionLabels 394112 Reencode0_477.lines [] = (394292, localLabels1_477) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_477_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
