import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_351
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_351_eq : LabToTarget.sectionLabels 300732 Reencode0_351.lines [] = (300756, localLabels1_351) := by
  with_unfolding_all rfl
#print axioms localLabels1_351_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
