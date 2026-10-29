import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_345
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_345_eq : LabToTarget.sectionLabels 295344 Initial345.lines [] = (300432, localLabels0_345) := by
  with_unfolding_all rfl
#print axioms localLabels0_345_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
