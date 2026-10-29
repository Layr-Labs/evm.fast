import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_240_eq : LabToTarget.sectionLabels 187804 Initial240.lines [] = (188776, localLabels0_240) := by
  with_unfolding_all rfl
#print axioms localLabels0_240_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
