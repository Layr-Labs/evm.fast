import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_379
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_379
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_379_eq : LabToTarget.sectionLabels 317408 Reencode0_379.lines [] = (318232, localLabels1_379) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_379_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
