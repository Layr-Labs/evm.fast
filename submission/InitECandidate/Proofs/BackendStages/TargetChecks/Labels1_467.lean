import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_467
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_467_eq : LabToTarget.sectionLabels 392084 Reencode0_467.lines [] = (392260, localLabels1_467) := by
  with_unfolding_all rfl
#print axioms localLabels1_467_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
