import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_651
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_651_eq : LabToTarget.sectionLabels 618072 Initial651.lines [] = (624816, localLabels0_651) := by
  with_unfolding_all rfl
#print axioms localLabels0_651_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
