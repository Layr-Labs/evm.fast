import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_245
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_245_eq : LabToTarget.sectionLabels 191292 Initial245.lines [] = (191312, localLabels0_245) := by
  with_unfolding_all rfl
#print axioms localLabels0_245_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
