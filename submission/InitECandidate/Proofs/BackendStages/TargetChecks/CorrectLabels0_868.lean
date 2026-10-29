import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_868
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_868_eq : LabToTarget.sectionLabels 1060216 Initial868.lines [] = (1067088, localLabels0_868) := by
  with_unfolding_all rfl
#print axioms localLabels0_868_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
