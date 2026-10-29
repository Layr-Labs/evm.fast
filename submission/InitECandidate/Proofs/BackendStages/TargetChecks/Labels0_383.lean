import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_383
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_383_eq : LabToTarget.sectionLabels 320596 Initial383.lines [] = (320692, localLabels0_383) := by
  with_unfolding_all rfl
#print axioms localLabels0_383_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
