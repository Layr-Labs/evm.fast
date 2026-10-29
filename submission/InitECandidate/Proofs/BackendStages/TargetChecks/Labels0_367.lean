import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_367
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_367_eq : LabToTarget.sectionLabels 308136 Initial367.lines [] = (311920, localLabels0_367) := by
  with_unfolding_all rfl
#print axioms localLabels0_367_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
