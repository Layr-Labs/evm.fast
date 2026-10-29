import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_877
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_877_eq : LabToTarget.sectionLabels 1071448 Initial877.lines [] = (1071672, localLabels0_877) := by
  with_unfolding_all rfl
#print axioms localLabels0_877_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
