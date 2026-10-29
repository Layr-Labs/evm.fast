import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_403
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_403
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_403_eq : LabToTarget.sectionLabels 333740 Reencode0_403.lines [] = (334080, localLabels1_403) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_403_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
