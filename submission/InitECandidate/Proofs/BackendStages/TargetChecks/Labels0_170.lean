import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_170
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_170_eq : LabToTarget.sectionLabels 101000 Initial170.lines [] = (101508, localLabels0_170) := by
  with_unfolding_all rfl
#print axioms localLabels0_170_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
