import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_505
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_505
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_505_eq : LabToTarget.sectionLabels 410396 Initial505.lines [] = (411436, localLabels0_505) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_505_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
