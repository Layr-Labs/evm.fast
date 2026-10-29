import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_115
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_115
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_115_eq : LabToTarget.sectionLabels 13724 Reencode0_115.lines [] = (13844, localLabels1_115) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_115_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
