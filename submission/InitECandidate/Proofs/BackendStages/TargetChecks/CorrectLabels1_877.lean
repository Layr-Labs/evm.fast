import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_877
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_877_eq : LabToTarget.sectionLabels 1072588 Reencode0_877.lines [] = (1072824, localLabels1_877) := by
  with_unfolding_all rfl
#print axioms localLabels1_877_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
