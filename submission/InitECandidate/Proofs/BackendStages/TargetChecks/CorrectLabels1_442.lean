import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_442
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_442
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_442_eq : LabToTarget.sectionLabels 357876 Reencode0_442.lines [] = (358184, localLabels1_442) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_442_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
