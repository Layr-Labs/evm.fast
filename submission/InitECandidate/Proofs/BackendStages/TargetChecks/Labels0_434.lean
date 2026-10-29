import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_434
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_434_eq : LabToTarget.sectionLabels 353364 Initial434.lines [] = (353472, localLabels0_434) := by
  with_unfolding_all rfl
#print axioms localLabels0_434_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
