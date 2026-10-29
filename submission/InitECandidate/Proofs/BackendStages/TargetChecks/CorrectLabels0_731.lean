import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_731
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_731_eq : LabToTarget.sectionLabels 802540 Initial731.lines [] = (802776, localLabels0_731) := by
  with_unfolding_all rfl
#print axioms localLabels0_731_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
