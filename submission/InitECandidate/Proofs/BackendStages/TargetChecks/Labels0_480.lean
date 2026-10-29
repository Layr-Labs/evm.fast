import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_480
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_480_eq : LabToTarget.sectionLabels 395120 Initial480.lines [] = (396572, localLabels0_480) := by
  with_unfolding_all rfl
#print axioms localLabels0_480_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
