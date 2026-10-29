import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_76
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_76
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_76_eq : LabToTarget.sectionLabels 7072 Reencode0_76.lines [] = (7108, localLabels1_76) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_76_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
