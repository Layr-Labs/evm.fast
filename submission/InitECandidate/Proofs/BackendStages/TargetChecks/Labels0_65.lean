import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_65
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_65_eq : LabToTarget.sectionLabels 1940 Initial65.lines [] = (5240, localLabels0_65) := by
  with_unfolding_all rfl
#print axioms localLabels0_65_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
