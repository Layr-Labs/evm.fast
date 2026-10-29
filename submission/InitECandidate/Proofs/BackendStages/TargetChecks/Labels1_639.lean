import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_639
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_639_eq : LabToTarget.sectionLabels 591184 Reencode0_639.lines [] = (591908, localLabels1_639) := by
  with_unfolding_all rfl
#print axioms localLabels1_639_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
