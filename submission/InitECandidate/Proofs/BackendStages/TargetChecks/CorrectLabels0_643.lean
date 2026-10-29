import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_643
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels0_643_eq : LabToTarget.sectionLabels 597972 Initial643.lines [] = (598592, localLabels0_643) := by
  with_unfolding_all rfl
#print axioms localLabels0_643_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
