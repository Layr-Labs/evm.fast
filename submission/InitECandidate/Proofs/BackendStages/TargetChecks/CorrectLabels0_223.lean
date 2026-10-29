import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_223
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_223_eq : LabToTarget.sectionLabels 133764 Initial223.lines [] = (138256, localLabels0_223) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_223_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
