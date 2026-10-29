import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_847
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_847_eq : LabToTarget.sectionLabels 1003444 Reencode0_847.lines [] = (1004400, localLabels1_847) := by
  with_unfolding_all rfl
#print axioms localLabels1_847_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
