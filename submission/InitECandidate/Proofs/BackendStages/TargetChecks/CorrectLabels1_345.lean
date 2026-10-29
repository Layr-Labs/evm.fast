import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_345
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_345
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_345_eq : LabToTarget.sectionLabels 295348 Reencode0_345.lines [] = (300436, localLabels1_345) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_345_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
