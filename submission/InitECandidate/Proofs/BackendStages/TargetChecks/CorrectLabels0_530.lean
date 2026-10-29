import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_530
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_530_eq : LabToTarget.sectionLabels 431640 Initial530.lines [] = (432660, localLabels0_530) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_530_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
