import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_732
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_732_eq : LabToTarget.sectionLabels 802796 Reencode0_732.lines [] = (802924, localLabels1_732) := by
  with_unfolding_all rfl
#print axioms localLabels1_732_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
