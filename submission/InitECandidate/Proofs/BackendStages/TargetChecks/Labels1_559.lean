import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_559_eq : LabToTarget.sectionLabels 460176 Reencode0_559.lines [] = (460608, localLabels1_559) := by
  with_unfolding_all rfl
#print axioms localLabels1_559_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
