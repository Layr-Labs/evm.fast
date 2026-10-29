import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_78
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_78
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_78_eq : LabToTarget.sectionLabels 7508 Reencode0_78.lines [] = (7860, localLabels1_78) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_78_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
