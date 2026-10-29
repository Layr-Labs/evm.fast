import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_758
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_758_eq : LabToTarget.sectionLabels 827508 Initial758.lines [] = (829508, localLabels0_758) := by
  with_unfolding_all rfl
#print axioms localLabels0_758_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
