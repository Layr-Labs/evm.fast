import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_398
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_398_eq : LabToTarget.sectionLabels 330472 Initial398.lines [] = (330960, localLabels0_398) := by
  with_unfolding_all rfl
#print axioms localLabels0_398_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
