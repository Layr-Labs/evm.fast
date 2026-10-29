import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_415_eq : LabToTarget.sectionLabels 340376 Initial415.lines [] = (340928, localLabels0_415) := by
  with_unfolding_all rfl
#print axioms localLabels0_415_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
