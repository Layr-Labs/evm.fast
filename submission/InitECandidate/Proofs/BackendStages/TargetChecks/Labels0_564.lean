import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_564
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_564_eq : LabToTarget.sectionLabels 463720 Initial564.lines [] = (464168, localLabels0_564) := by
  with_unfolding_all rfl
#print axioms localLabels0_564_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
