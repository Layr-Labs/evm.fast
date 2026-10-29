import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_143
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_143_eq : LabToTarget.sectionLabels 32472 Initial143.lines [] = (33164, localLabels0_143) := by
  with_unfolding_all rfl
#print axioms localLabels0_143_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
