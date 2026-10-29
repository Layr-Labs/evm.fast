import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_101
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_101_eq : LabToTarget.sectionLabels 12296 Reencode0_101.lines [] = (12340, localLabels1_101) := by
  with_unfolding_all rfl
#print axioms localLabels1_101_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
