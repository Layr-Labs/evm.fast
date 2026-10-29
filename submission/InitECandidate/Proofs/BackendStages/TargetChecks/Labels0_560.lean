import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_560_eq : LabToTarget.sectionLabels 460604 Initial560.lines [] = (462896, localLabels0_560) := by
  with_unfolding_all rfl
#print axioms localLabels0_560_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
