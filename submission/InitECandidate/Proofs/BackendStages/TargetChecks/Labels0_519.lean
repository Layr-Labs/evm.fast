import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_519
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_519_eq : LabToTarget.sectionLabels 422484 Initial519.lines [] = (423528, localLabels0_519) := by
  with_unfolding_all rfl
#print axioms localLabels0_519_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
