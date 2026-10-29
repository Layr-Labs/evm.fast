import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_366
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_366
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_366_eq : LabToTarget.sectionLabels 307756 Initial366.lines [] = (308136, localLabels0_366) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_366_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
