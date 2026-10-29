import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_411
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_411_eq : LabToTarget.sectionLabels 338328 Reencode0_411.lines [] = (339080, localLabels1_411) := by
  with_unfolding_all rfl
#print axioms localLabels1_411_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
