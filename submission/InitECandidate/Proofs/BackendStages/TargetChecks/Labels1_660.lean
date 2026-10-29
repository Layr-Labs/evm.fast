import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_660
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks
theorem localLabels1_660_eq : LabToTarget.sectionLabels 643828 Reencode0_660.lines [] = (644180, localLabels1_660) := by
  with_unfolding_all rfl
#print axioms localLabels1_660_eq
end InitECandidate.Proofs.BackendStages.TargetChecks
