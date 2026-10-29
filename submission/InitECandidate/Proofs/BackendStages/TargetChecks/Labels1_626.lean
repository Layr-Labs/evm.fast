import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_626
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_626_eq : LabToTarget.sectionLabels 578028 Reencode0_626.lines [] = (579428, localLabels1_626) := by
  with_unfolding_all rfl
#print axioms localLabels1_626_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
