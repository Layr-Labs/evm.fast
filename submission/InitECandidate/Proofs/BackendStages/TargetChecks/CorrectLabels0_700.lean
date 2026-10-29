import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_700
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_700_eq : LabToTarget.sectionLabels 724060 Initial700.lines [] = (730544, localLabels0_700) := by
  with_unfolding_all rfl
#print axioms localLabels0_700_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
