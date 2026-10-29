import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_156
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_156
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_156_eq : LabToTarget.sectionLabels 88632 Reencode0_156.lines [] = (90528, localLabels1_156) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_156_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
