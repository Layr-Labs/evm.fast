import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_251
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_251
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_251_eq : LabToTarget.sectionLabels 196140 Reencode0_251.lines [] = (197652, localLabels1_251) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_251_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
