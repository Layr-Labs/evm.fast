import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_94_eq : LabToTarget.sectionLabels 11268 Initial94.lines [] = (11620, localLabels0_94) := by
  with_unfolding_all rfl
#print axioms localLabels0_94_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
