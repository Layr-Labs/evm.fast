import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_264
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_264_eq : LabToTarget.sectionLabels 217812 Initial264.lines [] = (218680, localLabels0_264) := by
  with_unfolding_all rfl
#print axioms localLabels0_264_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
