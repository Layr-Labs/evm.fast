import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_344
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_344_eq : LabToTarget.sectionLabels 293440 Initial344.lines [] = (295344, localLabels0_344) := by
  with_unfolding_all rfl
#print axioms localLabels0_344_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
