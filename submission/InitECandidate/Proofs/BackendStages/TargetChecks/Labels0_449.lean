import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_449
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_449_eq : LabToTarget.sectionLabels 360716 Initial449.lines [] = (362516, localLabels0_449) := by
  with_unfolding_all rfl
#print axioms localLabels0_449_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
