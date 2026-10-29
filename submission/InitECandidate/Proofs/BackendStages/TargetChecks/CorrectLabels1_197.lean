import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_197
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_197
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_197_eq : LabToTarget.sectionLabels 111780 Reencode0_197.lines [] = (111892, localLabels1_197) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_197_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
