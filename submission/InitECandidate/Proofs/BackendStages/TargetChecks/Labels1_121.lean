import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_121
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_121_eq : LabToTarget.sectionLabels 16208 Reencode0_121.lines [] = (20304, localLabels1_121) := by
  with_unfolding_all rfl
#print axioms localLabels1_121_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
