import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_134
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_134
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_134_eq : LabToTarget.sectionLabels 27088 Reencode0_134.lines [] = (27764, localLabels1_134) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_134_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
