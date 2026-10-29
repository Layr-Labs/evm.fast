import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_66
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_66_eq : LabToTarget.sectionLabels 5244 Reencode0_66.lines [] = (5432, localLabels1_66) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_66_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
