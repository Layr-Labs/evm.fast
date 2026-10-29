import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_377
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_377_eq : LabToTarget.sectionLabels 312884 Reencode0_377.lines [] = (313744, localLabels1_377) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_377_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
