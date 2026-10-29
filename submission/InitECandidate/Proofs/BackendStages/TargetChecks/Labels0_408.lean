import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_408
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_408_eq : LabToTarget.sectionLabels 335880 Initial408.lines [] = (336936, localLabels0_408) := by
  with_unfolding_all rfl
#print axioms localLabels0_408_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
