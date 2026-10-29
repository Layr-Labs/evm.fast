import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_681
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_681_eq : LabToTarget.sectionLabels 665628 Initial681.lines [] = (665652, localLabels0_681) := by
  with_unfolding_all rfl
#print axioms localLabels0_681_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
