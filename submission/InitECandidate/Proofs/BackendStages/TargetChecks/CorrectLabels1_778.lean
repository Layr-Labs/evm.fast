import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_778
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_778_eq : LabToTarget.sectionLabels 864968 Reencode0_778.lines [] = (865412, localLabels1_778) := by
  with_unfolding_all rfl
#print axioms localLabels1_778_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
