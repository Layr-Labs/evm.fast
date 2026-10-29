import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_813
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_813_eq : LabToTarget.sectionLabels 958624 Initial813.lines [] = (961128, localLabels0_813) := by
  with_unfolding_all rfl
#print axioms localLabels0_813_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
