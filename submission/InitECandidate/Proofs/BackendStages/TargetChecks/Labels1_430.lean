import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_430
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_430_eq : LabToTarget.sectionLabels 349476 Reencode0_430.lines [] = (349916, localLabels1_430) := by
  with_unfolding_all rfl
#print axioms localLabels1_430_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
