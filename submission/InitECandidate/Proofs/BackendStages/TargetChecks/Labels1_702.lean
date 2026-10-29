import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_702
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_702_eq : LabToTarget.sectionLabels 731668 Reencode0_702.lines [] = (732776, localLabels1_702) := by
  with_unfolding_all rfl
#print axioms localLabels1_702_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
