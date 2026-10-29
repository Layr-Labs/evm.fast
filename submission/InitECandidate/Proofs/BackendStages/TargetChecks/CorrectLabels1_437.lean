import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_437
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_437
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_437_eq : LabToTarget.sectionLabels 354244 Reencode0_437.lines [] = (354748, localLabels1_437) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_437_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
