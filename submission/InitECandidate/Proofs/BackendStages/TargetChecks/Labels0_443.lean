import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_443
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_443_eq : LabToTarget.sectionLabels 358180 Initial443.lines [] = (358608, localLabels0_443) := by
  with_unfolding_all rfl
#print axioms localLabels0_443_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
