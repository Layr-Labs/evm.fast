import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_220
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_220_eq : LabToTarget.sectionLabels 133524 Initial220.lines [] = (133644, localLabels0_220) := by
  with_unfolding_all rfl
#print axioms localLabels0_220_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
