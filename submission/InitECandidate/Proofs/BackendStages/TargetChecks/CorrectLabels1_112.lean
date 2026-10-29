import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_112
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_112
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_112_eq : LabToTarget.sectionLabels 13640 Reencode0_112.lines [] = (13668, localLabels1_112) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_112_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
