import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_764
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_764_eq : LabToTarget.sectionLabels 835016 Reencode0_764.lines [] = (835324, localLabels1_764) := by
  with_unfolding_all rfl
#print axioms localLabels1_764_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
