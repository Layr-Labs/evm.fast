import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_685
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_685_eq : LabToTarget.sectionLabels 682116 Reencode0_685.lines [] = (688956, localLabels1_685) := by
  with_unfolding_all rfl
#print axioms localLabels1_685_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
