import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_206
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_206_eq : LabToTarget.sectionLabels 116904 Initial206.lines [] = (122380, localLabels0_206) := by
  with_unfolding_all rfl
#print axioms localLabels0_206_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
