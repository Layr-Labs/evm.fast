import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_243
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_243_eq : LabToTarget.sectionLabels 190224 Initial243.lines [] = (190964, localLabels0_243) := by
  with_unfolding_all rfl
#print axioms localLabels0_243_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
