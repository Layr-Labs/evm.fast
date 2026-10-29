import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_846
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_846_eq : LabToTarget.sectionLabels 1002536 Initial846.lines [] = (1003424, localLabels0_846) := by
  with_unfolding_all rfl
#print axioms localLabels0_846_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
