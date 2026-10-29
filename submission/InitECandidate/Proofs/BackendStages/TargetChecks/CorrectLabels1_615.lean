import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_615
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_615_eq : LabToTarget.sectionLabels 537708 Reencode0_615.lines [] = (539132, localLabels1_615) := by
  with_unfolding_all rfl
#print axioms localLabels1_615_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
