import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_465
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_465_eq : LabToTarget.sectionLabels 391400 Reencode0_465.lines [] = (391572, localLabels1_465) := by
  with_unfolding_all rfl
#print axioms localLabels1_465_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
