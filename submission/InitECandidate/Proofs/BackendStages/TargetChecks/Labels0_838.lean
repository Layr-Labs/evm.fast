import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_838
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_838_eq : LabToTarget.sectionLabels 995120 Initial838.lines [] = (995872, localLabels0_838) := by
  with_unfolding_all rfl
#print axioms localLabels0_838_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
