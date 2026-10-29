import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_757
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_757_eq : LabToTarget.sectionLabels 826760 Initial757.lines [] = (827508, localLabels0_757) := by
  with_unfolding_all rfl
#print axioms localLabels0_757_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
