import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_381
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_381_eq : LabToTarget.sectionLabels 318960 Initial381.lines [] = (319820, localLabels0_381) := by
  with_unfolding_all rfl
#print axioms localLabels0_381_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
