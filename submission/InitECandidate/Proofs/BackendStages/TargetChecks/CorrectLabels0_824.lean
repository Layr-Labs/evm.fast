import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_824
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_824_eq : LabToTarget.sectionLabels 977012 Initial824.lines [] = (978064, localLabels0_824) := by
  with_unfolding_all rfl
#print axioms localLabels0_824_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
