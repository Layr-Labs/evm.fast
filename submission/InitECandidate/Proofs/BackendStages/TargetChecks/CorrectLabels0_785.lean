import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_785
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_785_eq : LabToTarget.sectionLabels 879128 Initial785.lines [] = (880492, localLabels0_785) := by
  with_unfolding_all rfl
#print axioms localLabels0_785_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
