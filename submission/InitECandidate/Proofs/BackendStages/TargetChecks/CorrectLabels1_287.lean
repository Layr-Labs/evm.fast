import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_287
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_287
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_287_eq : LabToTarget.sectionLabels 247380 Reencode0_287.lines [] = (248432, localLabels1_287) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_287_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
