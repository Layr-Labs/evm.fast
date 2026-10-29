import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_551
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_551_eq : LabToTarget.sectionLabels 453596 Reencode0_551.lines [] = (454468, localLabels1_551) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_551_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
