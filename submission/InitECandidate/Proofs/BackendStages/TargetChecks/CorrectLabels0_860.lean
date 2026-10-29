import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_860
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_860_eq : LabToTarget.sectionLabels 1031160 Initial860.lines [] = (1033248, localLabels0_860) := by
  with_unfolding_all rfl
#print axioms localLabels0_860_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
