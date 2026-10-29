import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_699
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_699_eq : LabToTarget.sectionLabels 722852 Reencode0_699.lines [] = (724080, localLabels1_699) := by
  with_unfolding_all rfl
#print axioms localLabels1_699_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
