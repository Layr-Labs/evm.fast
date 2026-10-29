import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_715
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_715_eq : LabToTarget.sectionLabels 791020 Reencode0_715.lines [] = (791056, localLabels1_715) := by
  with_unfolding_all rfl
#print axioms localLabels1_715_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
