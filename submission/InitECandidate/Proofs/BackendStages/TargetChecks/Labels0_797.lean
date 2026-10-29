import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_797
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_797_eq : LabToTarget.sectionLabels 918492 Initial797.lines [] = (919976, localLabels0_797) := by
  with_unfolding_all rfl
#print axioms localLabels0_797_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
