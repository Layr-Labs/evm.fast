import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_147
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_147_eq : LabToTarget.sectionLabels 35036 Reencode0_147.lines [] = (36324, localLabels1_147) := by
  with_unfolding_all rfl
#print axioms localLabels1_147_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
