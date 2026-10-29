import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_418
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_418_eq : LabToTarget.sectionLabels 341676 Reencode0_418.lines [] = (342032, localLabels1_418) := by
  with_unfolding_all rfl
#print axioms localLabels1_418_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
