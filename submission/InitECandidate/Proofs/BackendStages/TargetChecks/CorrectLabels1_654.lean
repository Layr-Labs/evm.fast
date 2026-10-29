import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_654
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_654_eq : LabToTarget.sectionLabels 629380 Reencode0_654.lines [] = (630932, localLabels1_654) := by
  with_unfolding_all rfl
#print axioms localLabels1_654_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
