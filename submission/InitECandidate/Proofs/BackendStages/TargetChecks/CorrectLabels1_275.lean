import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_275
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_275_eq : LabToTarget.sectionLabels 230004 Reencode0_275.lines [] = (230812, localLabels1_275) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_275_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
