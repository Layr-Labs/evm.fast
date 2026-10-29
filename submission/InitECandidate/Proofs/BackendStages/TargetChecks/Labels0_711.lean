import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_711
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_711_eq : LabToTarget.sectionLabels 770560 Initial711.lines [] = (771088, localLabels0_711) := by
  with_unfolding_all rfl
#print axioms localLabels0_711_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
