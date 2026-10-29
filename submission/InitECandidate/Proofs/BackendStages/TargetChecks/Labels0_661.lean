import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_661
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_661_eq : LabToTarget.sectionLabels 644160 Initial661.lines [] = (654276, localLabels0_661) := by
  with_unfolding_all rfl
#print axioms localLabels0_661_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
