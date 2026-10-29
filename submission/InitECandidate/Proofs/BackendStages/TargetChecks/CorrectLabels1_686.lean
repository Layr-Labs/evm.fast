import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_686
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_686_eq : LabToTarget.sectionLabels 688956 Reencode0_686.lines [] = (689896, localLabels1_686) := by
  with_unfolding_all rfl
#print axioms localLabels1_686_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
