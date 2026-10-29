import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_399
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_399
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_399_eq : LabToTarget.sectionLabels 330964 Reencode0_399.lines [] = (331172, localLabels1_399) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_399_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
