import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_798
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_798_eq : LabToTarget.sectionLabels 919976 Initial798.lines [] = (925040, localLabels0_798) := by
  with_unfolding_all rfl
#print axioms localLabels0_798_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
