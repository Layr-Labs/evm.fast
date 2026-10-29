import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_179
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_179_eq : LabToTarget.sectionLabels 103576 Initial179.lines [] = (103848, localLabels0_179) := by
  with_unfolding_all rfl
#print axioms localLabels0_179_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
