import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_405
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_405_eq : LabToTarget.sectionLabels 334732 Reencode0_405.lines [] = (335048, localLabels1_405) := by
  with_unfolding_all rfl
#print axioms localLabels1_405_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
