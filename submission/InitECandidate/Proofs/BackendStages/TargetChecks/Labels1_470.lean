import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_470
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_470_eq : LabToTarget.sectionLabels 392492 Reencode0_470.lines [] = (392588, localLabels1_470) := by
  with_unfolding_all rfl
#print axioms localLabels1_470_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
