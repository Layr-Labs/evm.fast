import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_187
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_187
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_187_eq : LabToTarget.sectionLabels 106484 Reencode0_187.lines [] = (106868, localLabels1_187) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_187_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
