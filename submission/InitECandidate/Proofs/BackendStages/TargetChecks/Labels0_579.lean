import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_579
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_579_eq : LabToTarget.sectionLabels 478400 Initial579.lines [] = (478932, localLabels0_579) := by
  with_unfolding_all rfl
#print axioms localLabels0_579_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
