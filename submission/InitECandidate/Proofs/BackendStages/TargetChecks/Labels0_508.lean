import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_508
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_508_eq : LabToTarget.sectionLabels 413488 Initial508.lines [] = (414360, localLabels0_508) := by
  with_unfolding_all rfl
#print axioms localLabels0_508_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
