import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_736
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_736_eq : LabToTarget.sectionLabels 804720 Reencode0_736.lines [] = (805308, localLabels1_736) := by
  with_unfolding_all rfl
#print axioms localLabels1_736_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
