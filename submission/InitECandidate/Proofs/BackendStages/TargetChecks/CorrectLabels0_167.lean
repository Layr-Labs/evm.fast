import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_167
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_167
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_167_eq : LabToTarget.sectionLabels 99592 Initial167.lines [] = (99900, localLabels0_167) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_167_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
