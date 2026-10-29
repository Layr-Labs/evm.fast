import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_5
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_5_eq : LabToTarget.sectionLabels 864 Reencode0_5.lines [] = (908, localLabels1_5) := by
  with_unfolding_all rfl
#print axioms localLabels1_5_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
