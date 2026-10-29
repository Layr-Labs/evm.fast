import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_172
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_172_eq : LabToTarget.sectionLabels 101996 Reencode0_172.lines [] = (102056, localLabels1_172) := by
  with_unfolding_all rfl
#print axioms localLabels1_172_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
