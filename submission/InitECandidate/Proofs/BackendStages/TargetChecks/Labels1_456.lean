import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_456
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_456_eq : LabToTarget.sectionLabels 370044 Reencode0_456.lines [] = (370224, localLabels1_456) := by
  with_unfolding_all rfl
#print axioms localLabels1_456_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
