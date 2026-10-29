import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_419
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_419_eq : LabToTarget.sectionLabels 342032 Reencode0_419.lines [] = (342228, localLabels1_419) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_419_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
