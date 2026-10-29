import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_362_eq : LabToTarget.sectionLabels 304216 Initial362.lines [] = (304724, localLabels0_362) := by
  with_unfolding_all rfl
#print axioms localLabels0_362_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
