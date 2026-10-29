import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_423
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_423_eq : LabToTarget.sectionLabels 344580 Reencode0_423.lines [] = (345056, localLabels1_423) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_423_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
