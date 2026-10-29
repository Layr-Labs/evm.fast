import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_240
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_240_eq : LabToTarget.sectionLabels 187808 Reencode0_240.lines [] = (188780, localLabels1_240) := by
  with_unfolding_all rfl
#print axioms localLabels1_240_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
