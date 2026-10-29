import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_405_eq : LabToTarget.sectionLabels 334728 Initial405.lines [] = (335044, localLabels0_405) := by
  with_unfolding_all rfl
#print axioms localLabels0_405_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
