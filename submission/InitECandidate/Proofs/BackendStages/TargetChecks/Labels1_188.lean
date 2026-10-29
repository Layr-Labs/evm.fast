import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_188
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_188_eq : LabToTarget.sectionLabels 106868 Reencode0_188.lines [] = (107144, localLabels1_188) := by
  with_unfolding_all rfl
#print axioms localLabels1_188_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
