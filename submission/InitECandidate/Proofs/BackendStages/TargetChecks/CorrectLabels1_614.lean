import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_614
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_614_eq : LabToTarget.sectionLabels 536160 Reencode0_614.lines [] = (537708, localLabels1_614) := by
  with_unfolding_all rfl
#print axioms localLabels1_614_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
