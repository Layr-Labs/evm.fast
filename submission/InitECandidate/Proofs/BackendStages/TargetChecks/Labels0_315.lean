import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_315
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_315_eq : LabToTarget.sectionLabels 266620 Initial315.lines [] = (269128, localLabels0_315) := by
  with_unfolding_all rfl
#print axioms localLabels0_315_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
