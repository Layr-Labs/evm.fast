import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_343
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_343_eq : LabToTarget.sectionLabels 292684 Initial343.lines [] = (293440, localLabels0_343) := by
  with_unfolding_all rfl
#print axioms localLabels0_343_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
