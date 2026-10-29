import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_282
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_282_eq : LabToTarget.sectionLabels 241388 Reencode0_282.lines [] = (241672, localLabels1_282) := by
  with_unfolding_all rfl
#print axioms localLabels1_282_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
