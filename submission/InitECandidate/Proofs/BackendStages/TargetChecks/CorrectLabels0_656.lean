import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_656
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_656_eq : LabToTarget.sectionLabels 637616 Initial656.lines [] = (639256, localLabels0_656) := by
  with_unfolding_all rfl
#print axioms localLabels0_656_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
