import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_828
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_828_eq : LabToTarget.sectionLabels 980000 Initial828.lines [] = (980580, localLabels0_828) := by
  with_unfolding_all rfl
#print axioms localLabels0_828_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
