import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_209
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_209
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_209_eq : LabToTarget.sectionLabels 127280 Reencode0_209.lines [] = (127328, localLabels1_209) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_209_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
