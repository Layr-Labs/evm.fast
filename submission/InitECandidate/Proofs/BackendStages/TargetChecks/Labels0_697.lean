import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_697
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_697_eq : LabToTarget.sectionLabels 719580 Initial697.lines [] = (721316, localLabels0_697) := by
  with_unfolding_all rfl
#print axioms localLabels0_697_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
