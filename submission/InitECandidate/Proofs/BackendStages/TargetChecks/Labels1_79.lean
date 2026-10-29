import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_79
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_79_eq : LabToTarget.sectionLabels 7860 Reencode0_79.lines [] = (9112, localLabels1_79) := by
  with_unfolding_all rfl
#print axioms localLabels1_79_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
