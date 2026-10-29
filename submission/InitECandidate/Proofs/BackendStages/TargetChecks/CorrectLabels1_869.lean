import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_869
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_869_eq : LabToTarget.sectionLabels 1067960 Reencode0_869.lines [] = (1070852, localLabels1_869) := by
  with_unfolding_all rfl
#print axioms localLabels1_869_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
