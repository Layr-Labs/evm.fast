import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_831
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_831_eq : LabToTarget.sectionLabels 981372 Initial831.lines [] = (982036, localLabels0_831) := by
  with_unfolding_all rfl
#print axioms localLabels0_831_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
