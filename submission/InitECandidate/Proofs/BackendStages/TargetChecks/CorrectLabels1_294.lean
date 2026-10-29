import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_294
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_294
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_294_eq : LabToTarget.sectionLabels 251028 Reencode0_294.lines [] = (251244, localLabels1_294) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_294_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
