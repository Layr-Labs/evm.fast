import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_407
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_407_eq : LabToTarget.sectionLabels 335568 Reencode0_407.lines [] = (335884, localLabels1_407) := by
  with_unfolding_all rfl
#print axioms localLabels1_407_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
