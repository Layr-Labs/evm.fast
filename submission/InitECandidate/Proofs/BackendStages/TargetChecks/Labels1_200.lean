import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_200
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_200_eq : LabToTarget.sectionLabels 113828 Reencode0_200.lines [] = (115192, localLabels1_200) := by
  with_unfolding_all rfl
#print axioms localLabels1_200_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
