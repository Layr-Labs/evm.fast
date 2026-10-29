import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_552
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_552_eq : LabToTarget.sectionLabels 454468 Reencode0_552.lines [] = (455532, localLabels1_552) := by
  with_unfolding_all rfl
#print axioms localLabels1_552_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
