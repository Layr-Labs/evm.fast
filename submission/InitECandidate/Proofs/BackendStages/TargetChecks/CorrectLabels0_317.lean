import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_317
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_317
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_317_eq : LabToTarget.sectionLabels 270172 Initial317.lines [] = (270704, localLabels0_317) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_317_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
