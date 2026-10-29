import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_356
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_356
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_356_eq : LabToTarget.sectionLabels 300872 Initial356.lines [] = (300892, localLabels0_356) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_356_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
