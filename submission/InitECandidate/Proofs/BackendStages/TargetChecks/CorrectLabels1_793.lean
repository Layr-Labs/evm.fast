import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_793
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_793_eq : LabToTarget.sectionLabels 900836 Reencode0_793.lines [] = (903904, localLabels1_793) := by
  with_unfolding_all rfl
#print axioms localLabels1_793_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
