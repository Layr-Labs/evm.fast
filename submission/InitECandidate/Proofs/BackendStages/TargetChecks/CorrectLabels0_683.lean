import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_683
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_683_eq : LabToTarget.sectionLabels 671184 Initial683.lines [] = (679824, localLabels0_683) := by
  with_unfolding_all rfl
#print axioms localLabels0_683_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
