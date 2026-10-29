import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_554
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_554_eq : LabToTarget.sectionLabels 456084 Initial554.lines [] = (457156, localLabels0_554) := by
  with_unfolding_all rfl
#print axioms localLabels0_554_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
