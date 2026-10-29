import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_175_eq : LabToTarget.sectionLabels 102512 Initial175.lines [] = (102716, localLabels0_175) := by
  with_unfolding_all rfl
#print axioms localLabels0_175_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
