import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_817
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_817_eq : LabToTarget.sectionLabels 966764 Reencode0_817.lines [] = (970232, localLabels1_817) := by
  with_unfolding_all rfl
#print axioms localLabels1_817_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
