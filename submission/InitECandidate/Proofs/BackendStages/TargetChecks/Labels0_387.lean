import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_387
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_387_eq : LabToTarget.sectionLabels 324600 Initial387.lines [] = (326036, localLabels0_387) := by
  with_unfolding_all rfl
#print axioms localLabels0_387_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
