import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_624
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_624_eq : LabToTarget.sectionLabels 571172 Initial624.lines [] = (576772, localLabels0_624) := by
  with_unfolding_all rfl
#print axioms localLabels0_624_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
