import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_500
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_500_eq : LabToTarget.sectionLabels 405872 Reencode0_500.lines [] = (406744, localLabels1_500) := by
  with_unfolding_all rfl
#print axioms localLabels1_500_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
