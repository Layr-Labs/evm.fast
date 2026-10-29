import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_423
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_423_eq : LabToTarget.sectionLabels 344576 Initial423.lines [] = (345052, localLabels0_423) := by
  with_unfolding_all rfl
#print axioms localLabels0_423_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
