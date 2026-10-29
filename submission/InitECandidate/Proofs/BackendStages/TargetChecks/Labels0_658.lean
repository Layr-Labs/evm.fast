import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_658
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_658_eq : LabToTarget.sectionLabels 642580 Initial658.lines [] = (643148, localLabels0_658) := by
  with_unfolding_all rfl
#print axioms localLabels0_658_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
