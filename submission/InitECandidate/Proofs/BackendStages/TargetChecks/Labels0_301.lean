import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_301
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_301_eq : LabToTarget.sectionLabels 253488 Initial301.lines [] = (256148, localLabels0_301) := by
  with_unfolding_all rfl
#print axioms localLabels0_301_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
