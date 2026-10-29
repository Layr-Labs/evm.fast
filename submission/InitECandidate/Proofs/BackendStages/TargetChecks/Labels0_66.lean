import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_66
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_66_eq : LabToTarget.sectionLabels 5240 Initial66.lines [] = (5428, localLabels0_66) := by
  with_unfolding_all rfl
#print axioms localLabels0_66_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
