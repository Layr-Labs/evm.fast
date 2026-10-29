import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_551
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_551_eq : LabToTarget.sectionLabels 453592 Initial551.lines [] = (454464, localLabels0_551) := by
  with_unfolding_all rfl
#print axioms localLabels0_551_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
