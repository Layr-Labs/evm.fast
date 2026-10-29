import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_817
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_817_eq : LabToTarget.sectionLabels 966744 Initial817.lines [] = (970212, localLabels0_817) := by
  with_unfolding_all rfl
#print axioms localLabels0_817_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
