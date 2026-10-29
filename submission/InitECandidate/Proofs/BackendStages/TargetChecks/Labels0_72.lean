import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_72
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_72_eq : LabToTarget.sectionLabels 6536 Initial72.lines [] = (6564, localLabels0_72) := by
  with_unfolding_all rfl
#print axioms localLabels0_72_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
