import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_153
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_153_eq : LabToTarget.sectionLabels 56032 Initial153.lines [] = (57476, localLabels0_153) := by
  with_unfolding_all rfl
#print axioms localLabels0_153_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
