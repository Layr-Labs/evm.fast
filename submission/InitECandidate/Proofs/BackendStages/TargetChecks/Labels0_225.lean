import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_225
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_225_eq : LabToTarget.sectionLabels 144900 Initial225.lines [] = (153108, localLabels0_225) := by
  with_unfolding_all rfl
#print axioms localLabels0_225_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
