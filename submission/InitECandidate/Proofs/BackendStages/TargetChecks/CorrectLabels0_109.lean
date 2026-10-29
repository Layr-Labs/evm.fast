import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_109
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_109
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_109_eq : LabToTarget.sectionLabels 13096 Initial109.lines [] = (13156, localLabels0_109) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_109_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
