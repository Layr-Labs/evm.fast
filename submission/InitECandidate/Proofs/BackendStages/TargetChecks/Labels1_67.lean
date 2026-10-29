import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_67_eq : LabToTarget.sectionLabels 5432 Reencode0_67.lines [] = (5536, localLabels1_67) := by
  with_unfolding_all rfl
#print axioms localLabels1_67_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
