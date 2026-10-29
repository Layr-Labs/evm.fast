import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_808
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_808_eq : LabToTarget.sectionLabels 948376 Reencode0_808.lines [] = (953088, localLabels1_808) := by
  with_unfolding_all rfl
#print axioms localLabels1_808_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
