import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_693
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_693_eq : LabToTarget.sectionLabels 701500 Reencode0_693.lines [] = (708444, localLabels1_693) := by
  with_unfolding_all rfl
#print axioms localLabels1_693_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
