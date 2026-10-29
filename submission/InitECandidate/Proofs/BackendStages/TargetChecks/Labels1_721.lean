import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_721
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_721_eq : LabToTarget.sectionLabels 796624 Reencode0_721.lines [] = (796960, localLabels1_721) := by
  with_unfolding_all rfl
#print axioms localLabels1_721_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
