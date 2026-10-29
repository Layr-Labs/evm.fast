import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_742
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_742_eq : LabToTarget.sectionLabels 811100 Reencode0_742.lines [] = (811800, localLabels1_742) := by
  with_unfolding_all rfl
#print axioms localLabels1_742_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
