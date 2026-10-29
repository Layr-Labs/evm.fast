import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_710
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_710_eq : LabToTarget.sectionLabels 770016 Reencode0_710.lines [] = (770580, localLabels1_710) := by
  with_unfolding_all rfl
#print axioms localLabels1_710_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
