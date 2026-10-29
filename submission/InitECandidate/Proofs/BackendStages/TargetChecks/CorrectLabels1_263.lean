import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_263
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_263
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_263_eq : LabToTarget.sectionLabels 216648 Reencode0_263.lines [] = (217816, localLabels1_263) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_263_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
