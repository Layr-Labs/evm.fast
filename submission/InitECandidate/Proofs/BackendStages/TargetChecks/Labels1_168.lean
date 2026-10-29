import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_168
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_168_eq : LabToTarget.sectionLabels 99904 Reencode0_168.lines [] = (100376, localLabels1_168) := by
  with_unfolding_all rfl
#print axioms localLabels1_168_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
