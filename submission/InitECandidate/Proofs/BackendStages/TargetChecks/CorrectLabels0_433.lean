import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_433
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_433
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_433_eq : LabToTarget.sectionLabels 351628 Initial433.lines [] = (353364, localLabels0_433) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_433_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
