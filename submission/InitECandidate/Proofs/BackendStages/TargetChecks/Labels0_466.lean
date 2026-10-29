import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_466
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_466_eq : LabToTarget.sectionLabels 391568 Initial466.lines [] = (392080, localLabels0_466) := by
  with_unfolding_all rfl
#print axioms localLabels0_466_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
