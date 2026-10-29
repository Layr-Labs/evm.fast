import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_823
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_823_eq : LabToTarget.sectionLabels 976456 Reencode0_823.lines [] = (977032, localLabels1_823) := by
  with_unfolding_all rfl
#print axioms localLabels1_823_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
