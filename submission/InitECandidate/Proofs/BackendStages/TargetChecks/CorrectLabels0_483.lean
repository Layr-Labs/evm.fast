import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_483
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_483
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_483_eq : LabToTarget.sectionLabels 397884 Initial483.lines [] = (398480, localLabels0_483) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_483_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
