import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_176
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_176_eq : LabToTarget.sectionLabels 102716 Initial176.lines [] = (103140, localLabels0_176) := by
  with_unfolding_all rfl
#print axioms localLabels0_176_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
