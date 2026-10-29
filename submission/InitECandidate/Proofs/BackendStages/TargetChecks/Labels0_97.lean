import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_97
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_97_eq : LabToTarget.sectionLabels 11960 Initial97.lines [] = (12024, localLabels0_97) := by
  with_unfolding_all rfl
#print axioms localLabels0_97_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
