import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_70
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_70_eq : LabToTarget.sectionLabels 6048 Reencode0_70.lines [] = (6084, localLabels1_70) := by
  with_unfolding_all rfl
#print axioms localLabels1_70_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
