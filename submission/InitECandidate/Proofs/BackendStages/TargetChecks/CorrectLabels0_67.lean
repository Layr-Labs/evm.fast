import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_67
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_67_eq : LabToTarget.sectionLabels 5428 Initial67.lines [] = (5532, localLabels0_67) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_67_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
