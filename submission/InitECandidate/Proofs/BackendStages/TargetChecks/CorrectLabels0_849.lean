import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_849
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_849_eq : LabToTarget.sectionLabels 1009576 Initial849.lines [] = (1009940, localLabels0_849) := by
  with_unfolding_all rfl
#print axioms localLabels0_849_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
