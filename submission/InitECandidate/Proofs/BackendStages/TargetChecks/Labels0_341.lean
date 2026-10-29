import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_341_eq : LabToTarget.sectionLabels 290312 Initial341.lines [] = (290532, localLabels0_341) := by
  with_unfolding_all rfl
#print axioms localLabels0_341_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
