import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_414
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels0_414
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_414_eq : LabToTarget.sectionLabels 339636 Initial414.lines [] = (340376, localLabels0_414) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels0_414_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
