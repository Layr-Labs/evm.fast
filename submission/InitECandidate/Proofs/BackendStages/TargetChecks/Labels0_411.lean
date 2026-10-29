import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_411
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_411_eq : LabToTarget.sectionLabels 338324 Initial411.lines [] = (339076, localLabels0_411) := by
  with_unfolding_all rfl
#print axioms localLabels0_411_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
