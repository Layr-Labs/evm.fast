import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_204
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_204_eq : LabToTarget.sectionLabels 116300 Initial204.lines [] = (116588, localLabels0_204) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_204_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
