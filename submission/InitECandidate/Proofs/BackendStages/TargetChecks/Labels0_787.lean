import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_787
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_787_eq : LabToTarget.sectionLabels 881840 Initial787.lines [] = (883312, localLabels0_787) := by
  with_unfolding_all rfl
#print axioms localLabels0_787_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
