import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_755
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_755_eq : LabToTarget.sectionLabels 826296 Reencode0_755.lines [] = (826472, localLabels1_755) := by
  with_unfolding_all rfl
#print axioms localLabels1_755_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
