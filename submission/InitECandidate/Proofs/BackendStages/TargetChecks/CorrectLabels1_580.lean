import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_580
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_580
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_580_eq : LabToTarget.sectionLabels 478936 Reencode0_580.lines [] = (479468, localLabels1_580) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_580_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
