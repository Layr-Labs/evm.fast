import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_606
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_606_eq : LabToTarget.sectionLabels 529140 Reencode0_606.lines [] = (531144, localLabels1_606) := by
  with_unfolding_all rfl
#print axioms localLabels1_606_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
