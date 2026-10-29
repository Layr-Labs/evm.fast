import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_798
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_798_eq : LabToTarget.sectionLabels 919996 Reencode0_798.lines [] = (925060, localLabels1_798) := by
  with_unfolding_all rfl
#print axioms localLabels1_798_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
