import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_514
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_514_eq : LabToTarget.sectionLabels 418556 Reencode0_514.lines [] = (419316, localLabels1_514) := by
  with_unfolding_all rfl
#print axioms localLabels1_514_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
