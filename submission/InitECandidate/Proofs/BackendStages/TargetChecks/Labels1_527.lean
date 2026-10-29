import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_527
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_527_eq : LabToTarget.sectionLabels 430496 Reencode0_527.lines [] = (430924, localLabels1_527) := by
  with_unfolding_all rfl
#print axioms localLabels1_527_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
