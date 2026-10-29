import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_763
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_763_eq : LabToTarget.sectionLabels 833300 Initial763.lines [] = (834996, localLabels0_763) := by
  with_unfolding_all rfl
#print axioms localLabels0_763_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
