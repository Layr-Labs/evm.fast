import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_192
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_192
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_192_eq : LabToTarget.sectionLabels 108984 Reencode0_192.lines [] = (110700, localLabels1_192) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_192_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
