import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_471
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_471_eq : LabToTarget.sectionLabels 392584 Initial471.lines [] = (392948, localLabels0_471) := by
  with_unfolding_all rfl
#print axioms localLabels0_471_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
