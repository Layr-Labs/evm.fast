import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_377
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_377
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_377_eq : LabToTarget.sectionLabels 312880 Initial377.lines [] = (313740, localLabels0_377) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_377_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
