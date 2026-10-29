import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_634
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_634_eq : LabToTarget.sectionLabels 585120 Reencode0_634.lines [] = (587752, localLabels1_634) := by
  with_unfolding_all rfl
#print axioms localLabels1_634_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
