import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_720
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_720_eq : LabToTarget.sectionLabels 791716 Initial720.lines [] = (796604, localLabels0_720) := by
  with_unfolding_all rfl
#print axioms localLabels0_720_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
