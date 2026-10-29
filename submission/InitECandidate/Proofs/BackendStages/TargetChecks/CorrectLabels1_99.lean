import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_99
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_99
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_99_eq : LabToTarget.sectionLabels 12260 Reencode0_99.lines [] = (12284, localLabels1_99) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_99_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
