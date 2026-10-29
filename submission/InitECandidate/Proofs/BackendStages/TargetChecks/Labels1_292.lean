import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_292
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_292_eq : LabToTarget.sectionLabels 249796 Reencode0_292.lines [] = (250300, localLabels1_292) := by
  with_unfolding_all rfl
#print axioms localLabels1_292_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
