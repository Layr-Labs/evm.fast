import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_254
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_254_eq : LabToTarget.sectionLabels 200564 Initial254.lines [] = (202364, localLabels0_254) := by
  with_unfolding_all rfl
#print axioms localLabels0_254_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
