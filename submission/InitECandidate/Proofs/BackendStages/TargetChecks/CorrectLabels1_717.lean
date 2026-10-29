import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_717
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_717_eq : LabToTarget.sectionLabels 791212 Reencode0_717.lines [] = (791248, localLabels1_717) := by
  with_unfolding_all rfl
#print axioms localLabels1_717_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
