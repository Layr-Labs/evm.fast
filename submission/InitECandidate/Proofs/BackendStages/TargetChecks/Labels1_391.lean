import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_391
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_391_eq : LabToTarget.sectionLabels 327868 Reencode0_391.lines [] = (328308, localLabels1_391) := by
  with_unfolding_all rfl
#print axioms localLabels1_391_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
