import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_509
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_509
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_509_eq : LabToTarget.sectionLabels 414364 Reencode0_509.lines [] = (415236, localLabels1_509) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_509_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
