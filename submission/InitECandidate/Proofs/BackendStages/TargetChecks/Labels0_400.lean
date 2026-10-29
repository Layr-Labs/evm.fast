import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_400
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_400_eq : LabToTarget.sectionLabels 331168 Initial400.lines [] = (331716, localLabels0_400) := by
  with_unfolding_all rfl
#print axioms localLabels0_400_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
