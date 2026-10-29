import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_496
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_496_eq : LabToTarget.sectionLabels 403064 Reencode0_496.lines [] = (403256, localLabels1_496) := by
  with_unfolding_all rfl
#print axioms localLabels1_496_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
