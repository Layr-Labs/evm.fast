import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_464
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_464_eq : LabToTarget.sectionLabels 391184 Initial464.lines [] = (391396, localLabels0_464) := by
  with_unfolding_all rfl
#print axioms localLabels0_464_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
