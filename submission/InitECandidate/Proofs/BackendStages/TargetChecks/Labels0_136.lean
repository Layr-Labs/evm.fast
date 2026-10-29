import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_136
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_136_eq : LabToTarget.sectionLabels 28336 Initial136.lines [] = (29524, localLabels0_136) := by
  with_unfolding_all rfl
#print axioms localLabels0_136_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
