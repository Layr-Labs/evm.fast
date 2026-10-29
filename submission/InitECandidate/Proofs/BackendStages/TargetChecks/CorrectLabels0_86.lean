import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_86
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_86
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_86_eq : LabToTarget.sectionLabels 9760 Initial86.lines [] = (9816, localLabels0_86) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_86_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
