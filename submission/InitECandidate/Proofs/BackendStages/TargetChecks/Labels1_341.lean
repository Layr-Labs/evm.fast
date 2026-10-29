import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_341
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_341_eq : LabToTarget.sectionLabels 290316 Reencode0_341.lines [] = (290536, localLabels1_341) := by
  with_unfolding_all rfl
#print axioms localLabels1_341_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
