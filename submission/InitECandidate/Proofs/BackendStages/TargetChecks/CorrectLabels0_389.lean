import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_389
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_389
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_389_eq : LabToTarget.sectionLabels 326920 Initial389.lines [] = (327836, localLabels0_389) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_389_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
