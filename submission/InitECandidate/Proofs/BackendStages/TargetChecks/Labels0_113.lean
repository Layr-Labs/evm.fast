import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_113
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_113_eq : LabToTarget.sectionLabels 13664 Initial113.lines [] = (13692, localLabels0_113) := by
  with_unfolding_all rfl
#print axioms localLabels0_113_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
