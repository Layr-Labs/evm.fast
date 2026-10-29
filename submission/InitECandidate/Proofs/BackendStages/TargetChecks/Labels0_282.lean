import InitECandidate.Proofs.BackendStages.TargetChecks.Data0_282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels0_282_eq : LabToTarget.sectionLabels 241384 Initial282.lines [] = (241668, localLabels0_282) := by
  with_unfolding_all rfl
#print axioms localLabels0_282_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
