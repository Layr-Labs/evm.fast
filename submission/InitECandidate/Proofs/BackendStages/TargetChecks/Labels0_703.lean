import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_703
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_703_eq : LabToTarget.sectionLabels 732756 Initial703.lines [] = (733664, localLabels0_703) := by
  with_unfolding_all rfl
#print axioms localLabels0_703_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
