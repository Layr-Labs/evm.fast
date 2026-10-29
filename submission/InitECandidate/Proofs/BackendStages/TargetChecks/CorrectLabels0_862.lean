import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_862
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_862_eq : LabToTarget.sectionLabels 1033888 Initial862.lines [] = (1039580, localLabels0_862) := by
  with_unfolding_all rfl
#print axioms localLabels0_862_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
