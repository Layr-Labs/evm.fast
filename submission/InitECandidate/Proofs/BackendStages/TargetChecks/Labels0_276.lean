import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_276
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_276_eq : LabToTarget.sectionLabels 230808 Initial276.lines [] = (234924, localLabels0_276) := by
  with_unfolding_all rfl
#print axioms localLabels0_276_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
