import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_497
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_497_eq : LabToTarget.sectionLabels 403252 Initial497.lines [] = (404124, localLabels0_497) := by
  with_unfolding_all rfl
#print axioms localLabels0_497_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
