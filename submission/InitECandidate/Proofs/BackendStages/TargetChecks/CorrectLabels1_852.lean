import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_852
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_852_eq : LabToTarget.sectionLabels 1019356 Reencode0_852.lines [] = (1023152, localLabels1_852) := by
  with_unfolding_all rfl
#print axioms localLabels1_852_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
