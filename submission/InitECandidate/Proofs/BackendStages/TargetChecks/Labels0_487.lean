import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_487
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_487_eq : LabToTarget.sectionLabels 399872 Initial487.lines [] = (400184, localLabels0_487) := by
  with_unfolding_all rfl
#print axioms localLabels0_487_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
