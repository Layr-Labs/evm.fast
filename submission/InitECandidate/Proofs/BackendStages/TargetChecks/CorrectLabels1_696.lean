import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_696
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_696_eq : LabToTarget.sectionLabels 714056 Reencode0_696.lines [] = (719600, localLabels1_696) := by
  with_unfolding_all rfl
#print axioms localLabels1_696_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
