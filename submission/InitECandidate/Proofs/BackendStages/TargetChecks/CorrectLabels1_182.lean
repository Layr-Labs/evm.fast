import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_182
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_182
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_182_eq : LabToTarget.sectionLabels 104068 Reencode0_182.lines [] = (104872, localLabels1_182) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_182_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
