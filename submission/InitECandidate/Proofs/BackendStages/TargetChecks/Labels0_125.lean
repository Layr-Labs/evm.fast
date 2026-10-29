import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_125
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_125_eq : LabToTarget.sectionLabels 20924 Initial125.lines [] = (21004, localLabels0_125) := by
  with_unfolding_all rfl
#print axioms localLabels0_125_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
