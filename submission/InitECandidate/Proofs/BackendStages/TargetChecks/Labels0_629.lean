import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_629
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_629_eq : LabToTarget.sectionLabels 579844 Initial629.lines [] = (579960, localLabels0_629) := by
  with_unfolding_all rfl
#print axioms localLabels0_629_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
