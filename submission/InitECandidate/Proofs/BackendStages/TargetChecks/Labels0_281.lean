import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_281
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_281_eq : LabToTarget.sectionLabels 239944 Initial281.lines [] = (241384, localLabels0_281) := by
  with_unfolding_all rfl
#print axioms localLabels0_281_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
