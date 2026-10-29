import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_122
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_122_eq : LabToTarget.sectionLabels 20304 Reencode0_122.lines [] = (20600, localLabels1_122) := by
  with_unfolding_all rfl
#print axioms localLabels1_122_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
