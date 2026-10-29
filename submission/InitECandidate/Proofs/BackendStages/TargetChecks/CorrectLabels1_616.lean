import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_616
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_616_eq : LabToTarget.sectionLabels 539132 Reencode0_616.lines [] = (542112, localLabels1_616) := by
  with_unfolding_all rfl
#print axioms localLabels1_616_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
