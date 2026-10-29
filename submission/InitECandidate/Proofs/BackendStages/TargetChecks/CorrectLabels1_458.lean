import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_458
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_458
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_458_eq : LabToTarget.sectionLabels 373704 Reencode0_458.lines [] = (374040, localLabels1_458) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_458_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
