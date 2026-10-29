import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_620
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_620_eq : LabToTarget.sectionLabels 549556 Reencode0_620.lines [] = (550348, localLabels1_620) := by
  with_unfolding_all rfl
#print axioms localLabels1_620_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
