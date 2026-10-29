import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_531
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_531_eq : LabToTarget.sectionLabels 432660 Initial531.lines [] = (433472, localLabels0_531) := by
  with_unfolding_all rfl
#print axioms localLabels0_531_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
