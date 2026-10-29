import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_100
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_100_eq : LabToTarget.sectionLabels 12280 Initial100.lines [] = (12292, localLabels0_100) := by
  with_unfolding_all rfl
#print axioms localLabels0_100_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
