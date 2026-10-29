import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_521
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_521
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_521_eq : LabToTarget.sectionLabels 424572 Initial521.lines [] = (425616, localLabels0_521) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_521_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
