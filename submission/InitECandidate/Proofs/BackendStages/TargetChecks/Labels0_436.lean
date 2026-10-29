import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_436
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_436_eq : LabToTarget.sectionLabels 353856 Initial436.lines [] = (354240, localLabels0_436) := by
  with_unfolding_all rfl
#print axioms localLabels0_436_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
