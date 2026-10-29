import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_314
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_314_eq : LabToTarget.sectionLabels 265532 Initial314.lines [] = (266620, localLabels0_314) := by
  with_unfolding_all rfl
#print axioms localLabels0_314_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
