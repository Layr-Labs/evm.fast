import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_180
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_180_eq : LabToTarget.sectionLabels 103852 Reencode0_180.lines [] = (103864, localLabels1_180) := by
  with_unfolding_all rfl
#print axioms localLabels1_180_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
