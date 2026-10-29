import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_1
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_1_eq : LabToTarget.sectionLabels 780 Reencode0_1.lines [] = (796, localLabels1_1) := by
  with_unfolding_all rfl
#print axioms localLabels1_1_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
