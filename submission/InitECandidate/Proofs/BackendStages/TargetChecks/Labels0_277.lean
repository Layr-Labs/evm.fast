import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_277_eq : LabToTarget.sectionLabels 234924 Initial277.lines [] = (235496, localLabels0_277) := by
  with_unfolding_all rfl
#print axioms localLabels0_277_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
