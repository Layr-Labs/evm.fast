import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_682
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_682_eq : LabToTarget.sectionLabels 665652 Initial682.lines [] = (671184, localLabels0_682) := by
  with_unfolding_all rfl
#print axioms localLabels0_682_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
