import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_575
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_575_eq : LabToTarget.sectionLabels 474976 Reencode0_575.lines [] = (475632, localLabels1_575) := by
  with_unfolding_all rfl
#print axioms localLabels1_575_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
