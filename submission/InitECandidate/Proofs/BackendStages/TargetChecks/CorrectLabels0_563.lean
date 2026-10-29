import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_563
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_563
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_563_eq : LabToTarget.sectionLabels 463524 Initial563.lines [] = (463720, localLabels0_563) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_563_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
