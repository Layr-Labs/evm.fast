import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_698
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_698_eq : LabToTarget.sectionLabels 721336 Reencode0_698.lines [] = (722852, localLabels1_698) := by
  with_unfolding_all rfl
#print axioms localLabels1_698_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
