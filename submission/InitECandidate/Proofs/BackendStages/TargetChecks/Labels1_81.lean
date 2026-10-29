import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_81
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_81_eq : LabToTarget.sectionLabels 9196 Reencode0_81.lines [] = (9260, localLabels1_81) := by
  with_unfolding_all rfl
#print axioms localLabels1_81_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
