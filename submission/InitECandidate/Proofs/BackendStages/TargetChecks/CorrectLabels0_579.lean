import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_579
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_579_eq : LabToTarget.sectionLabels 478400 Initial579.lines [] = (478932, localLabels0_579) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_579_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
