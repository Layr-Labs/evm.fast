import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_482_eq : LabToTarget.sectionLabels 397136 Initial482.lines [] = (397884, localLabels0_482) := by
  with_unfolding_all rfl
#print axioms localLabels0_482_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
