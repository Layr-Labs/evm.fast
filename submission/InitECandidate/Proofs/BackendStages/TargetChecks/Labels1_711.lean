import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_711
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_711_eq : LabToTarget.sectionLabels 770580 Reencode0_711.lines [] = (771108, localLabels1_711) := by
  with_unfolding_all rfl
#print axioms localLabels1_711_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
