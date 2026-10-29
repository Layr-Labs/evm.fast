import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_105
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_105_eq : LabToTarget.sectionLabels 12708 Initial105.lines [] = (12772, localLabels0_105) := by
  with_unfolding_all rfl
#print axioms localLabels0_105_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
