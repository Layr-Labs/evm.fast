import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_632
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_632_eq : LabToTarget.sectionLabels 583760 Reencode0_632.lines [] = (584936, localLabels1_632) := by
  with_unfolding_all rfl
#print axioms localLabels1_632_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
