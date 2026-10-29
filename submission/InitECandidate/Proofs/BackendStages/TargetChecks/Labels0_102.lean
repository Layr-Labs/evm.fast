import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_102
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_102_eq : LabToTarget.sectionLabels 12336 Initial102.lines [] = (12384, localLabels0_102) := by
  with_unfolding_all rfl
#print axioms localLabels0_102_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
