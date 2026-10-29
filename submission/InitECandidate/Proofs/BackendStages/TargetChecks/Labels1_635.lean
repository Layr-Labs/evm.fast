import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_635
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_635_eq : LabToTarget.sectionLabels 587752 Reencode0_635.lines [] = (587916, localLabels1_635) := by
  with_unfolding_all rfl
#print axioms localLabels1_635_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
