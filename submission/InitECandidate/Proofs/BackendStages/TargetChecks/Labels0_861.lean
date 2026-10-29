import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_861
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_861_eq : LabToTarget.sectionLabels 1033248 Initial861.lines [] = (1033888, localLabels0_861) := by
  with_unfolding_all rfl
#print axioms localLabels0_861_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
