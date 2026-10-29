import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_415
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_415_eq : LabToTarget.sectionLabels 340380 Reencode0_415.lines [] = (340932, localLabels1_415) := by
  with_unfolding_all rfl
#print axioms localLabels1_415_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
