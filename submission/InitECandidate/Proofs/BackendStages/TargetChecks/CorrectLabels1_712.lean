import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_712
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_712_eq : LabToTarget.sectionLabels 771108 Reencode0_712.lines [] = (771680, localLabels1_712) := by
  with_unfolding_all rfl
#print axioms localLabels1_712_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
