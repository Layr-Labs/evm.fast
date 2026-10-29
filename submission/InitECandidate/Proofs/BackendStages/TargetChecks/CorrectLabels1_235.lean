import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_235
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_235
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_235_eq : LabToTarget.sectionLabels 182084 Reencode0_235.lines [] = (184728, localLabels1_235) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_235_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
