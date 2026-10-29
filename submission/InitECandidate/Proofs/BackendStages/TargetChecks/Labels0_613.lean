import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_613
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_613_eq : LabToTarget.sectionLabels 535604 Initial613.lines [] = (536140, localLabels0_613) := by
  with_unfolding_all rfl
#print axioms localLabels0_613_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
