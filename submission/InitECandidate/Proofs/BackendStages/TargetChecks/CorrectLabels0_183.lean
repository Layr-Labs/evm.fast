import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_183
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_183
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_183_eq : LabToTarget.sectionLabels 104868 Initial183.lines [] = (105672, localLabels0_183) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_183_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
