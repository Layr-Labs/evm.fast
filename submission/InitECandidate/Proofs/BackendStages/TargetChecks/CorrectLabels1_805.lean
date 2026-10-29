import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_805
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_805_eq : LabToTarget.sectionLabels 943088 Reencode0_805.lines [] = (946940, localLabels1_805) := by
  with_unfolding_all rfl
#print axioms localLabels1_805_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
