import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_361
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_361_eq : LabToTarget.sectionLabels 302504 Reencode0_361.lines [] = (304220, localLabels1_361) := by
  with_unfolding_all rfl
#print axioms localLabels1_361_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
