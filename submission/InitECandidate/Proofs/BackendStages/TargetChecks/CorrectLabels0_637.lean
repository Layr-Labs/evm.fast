import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_637
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_637_eq : LabToTarget.sectionLabels 588020 Initial637.lines [] = (588284, localLabels0_637) := by
  with_unfolding_all rfl
#print axioms localLabels0_637_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
