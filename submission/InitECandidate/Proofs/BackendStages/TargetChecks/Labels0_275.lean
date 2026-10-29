import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_275_eq : LabToTarget.sectionLabels 230000 Initial275.lines [] = (230808, localLabels0_275) := by
  with_unfolding_all rfl
#print axioms localLabels0_275_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
