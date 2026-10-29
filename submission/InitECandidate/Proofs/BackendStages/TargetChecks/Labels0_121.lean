import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_121
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_121_eq : LabToTarget.sectionLabels 16204 Initial121.lines [] = (20300, localLabels0_121) := by
  with_unfolding_all rfl
#print axioms localLabels0_121_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
