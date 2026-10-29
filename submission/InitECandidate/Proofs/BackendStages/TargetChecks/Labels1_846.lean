import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_846
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_846_eq : LabToTarget.sectionLabels 1002556 Reencode0_846.lines [] = (1003444, localLabels1_846) := by
  with_unfolding_all rfl
#print axioms localLabels1_846_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
