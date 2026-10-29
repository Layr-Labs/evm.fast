import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_120
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_120_eq : LabToTarget.sectionLabels 14488 Initial120.lines [] = (16204, localLabels0_120) := by
  with_unfolding_all rfl
#print axioms localLabels0_120_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
