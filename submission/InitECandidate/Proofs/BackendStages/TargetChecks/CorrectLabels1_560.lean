import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_560
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_560
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_560_eq : LabToTarget.sectionLabels 460608 Reencode0_560.lines [] = (462900, localLabels1_560) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_560_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
