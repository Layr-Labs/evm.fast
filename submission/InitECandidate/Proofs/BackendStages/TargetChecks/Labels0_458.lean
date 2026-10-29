import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_458_eq : LabToTarget.sectionLabels 373700 Initial458.lines [] = (374036, localLabels0_458) := by
  with_unfolding_all rfl
#print axioms localLabels0_458_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
