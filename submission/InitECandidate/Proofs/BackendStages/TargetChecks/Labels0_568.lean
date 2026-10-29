import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_568
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_568_eq : LabToTarget.sectionLabels 468520 Initial568.lines [] = (468948, localLabels0_568) := by
  with_unfolding_all rfl
#print axioms localLabels0_568_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
