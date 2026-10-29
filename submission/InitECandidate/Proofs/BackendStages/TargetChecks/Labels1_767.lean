import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_767
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_767_eq : LabToTarget.sectionLabels 840012 Reencode0_767.lines [] = (840052, localLabels1_767) := by
  with_unfolding_all rfl
#print axioms localLabels1_767_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
