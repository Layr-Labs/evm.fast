import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_409
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_409_eq : LabToTarget.sectionLabels 336936 Initial409.lines [] = (337292, localLabels0_409) := by
  with_unfolding_all rfl
#print axioms localLabels0_409_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
