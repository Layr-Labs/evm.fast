import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_515
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_515_eq : LabToTarget.sectionLabels 419312 Initial515.lines [] = (420072, localLabels0_515) := by
  with_unfolding_all rfl
#print axioms localLabels0_515_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
