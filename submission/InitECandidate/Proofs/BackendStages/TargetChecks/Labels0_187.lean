import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_187
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_187_eq : LabToTarget.sectionLabels 106480 Initial187.lines [] = (106864, localLabels0_187) := by
  with_unfolding_all rfl
#print axioms localLabels0_187_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
