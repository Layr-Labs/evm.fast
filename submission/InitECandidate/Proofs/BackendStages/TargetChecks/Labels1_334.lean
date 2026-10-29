import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_334
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_334_eq : LabToTarget.sectionLabels 287184 Reencode0_334.lines [] = (288732, localLabels1_334) := by
  with_unfolding_all rfl
#print axioms localLabels1_334_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
