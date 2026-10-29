import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_95_eq : LabToTarget.sectionLabels 11620 Initial95.lines [] = (11792, localLabels0_95) := by
  with_unfolding_all rfl
#print axioms localLabels0_95_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
