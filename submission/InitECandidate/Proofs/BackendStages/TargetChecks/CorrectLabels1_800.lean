import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_800
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_800_eq : LabToTarget.sectionLabels 926052 Reencode0_800.lines [] = (929608, localLabels1_800) := by
  with_unfolding_all rfl
#print axioms localLabels1_800_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
