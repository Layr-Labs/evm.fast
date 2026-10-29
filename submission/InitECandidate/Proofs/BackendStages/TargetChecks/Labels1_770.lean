import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_770
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_770_eq : LabToTarget.sectionLabels 840624 Reencode0_770.lines [] = (847708, localLabels1_770) := by
  with_unfolding_all rfl
#print axioms localLabels1_770_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
