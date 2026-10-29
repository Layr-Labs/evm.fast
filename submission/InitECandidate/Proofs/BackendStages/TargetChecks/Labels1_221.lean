import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_221
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_221_eq : LabToTarget.sectionLabels 133648 Reencode0_221.lines [] = (133736, localLabels1_221) := by
  with_unfolding_all rfl
#print axioms localLabels1_221_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
