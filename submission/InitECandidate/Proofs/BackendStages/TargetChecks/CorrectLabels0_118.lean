import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_118
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_118
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_118_eq : LabToTarget.sectionLabels 14088 Initial118.lines [] = (14236, localLabels0_118) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_118_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
