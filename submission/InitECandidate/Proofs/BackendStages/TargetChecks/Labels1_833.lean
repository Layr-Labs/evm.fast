import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_833
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_833_eq : LabToTarget.sectionLabels 984648 Reencode0_833.lines [] = (985456, localLabels1_833) := by
  with_unfolding_all rfl
#print axioms localLabels1_833_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
