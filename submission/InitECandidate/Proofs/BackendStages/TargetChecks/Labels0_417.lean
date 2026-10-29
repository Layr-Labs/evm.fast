import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_417
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_417_eq : LabToTarget.sectionLabels 341340 Initial417.lines [] = (341672, localLabels0_417) := by
  with_unfolding_all rfl
#print axioms localLabels0_417_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
