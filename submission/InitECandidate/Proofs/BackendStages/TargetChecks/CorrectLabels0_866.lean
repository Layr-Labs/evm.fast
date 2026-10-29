import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_866
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_866_eq : LabToTarget.sectionLabels 1056692 Initial866.lines [] = (1057140, localLabels0_866) := by
  with_unfolding_all rfl
#print axioms localLabels0_866_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
