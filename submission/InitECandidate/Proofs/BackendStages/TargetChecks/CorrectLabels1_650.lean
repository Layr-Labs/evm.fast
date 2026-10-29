import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_650
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_650_eq : LabToTarget.sectionLabels 611840 Reencode0_650.lines [] = (618092, localLabels1_650) := by
  with_unfolding_all rfl
#print axioms localLabels1_650_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
