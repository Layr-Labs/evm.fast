import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_131
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_131_eq : LabToTarget.sectionLabels 26196 Initial131.lines [] = (26376, localLabels0_131) := by
  with_unfolding_all rfl
#print axioms localLabels0_131_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
