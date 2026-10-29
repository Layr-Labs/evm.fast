import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_566
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_566_eq : LabToTarget.sectionLabels 464476 Initial566.lines [] = (465532, localLabels0_566) := by
  with_unfolding_all rfl
#print axioms localLabels0_566_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
