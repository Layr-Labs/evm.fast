import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_138
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_138
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_138_eq : LabToTarget.sectionLabels 29740 Reencode0_138.lines [] = (30272, localLabels1_138) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_138_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
