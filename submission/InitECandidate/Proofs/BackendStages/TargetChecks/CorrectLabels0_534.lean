import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_534
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_534
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_534_eq : LabToTarget.sectionLabels 434784 Initial534.lines [] = (437636, localLabels0_534) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_534_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
