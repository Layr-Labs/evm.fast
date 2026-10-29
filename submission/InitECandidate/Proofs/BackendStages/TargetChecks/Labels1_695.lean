import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_695
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_695_eq : LabToTarget.sectionLabels 710868 Reencode0_695.lines [] = (714056, localLabels1_695) := by
  with_unfolding_all rfl
#print axioms localLabels1_695_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
