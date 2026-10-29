import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_218
import InitECandidate.Proofs.BackendStages.TargetChecks.Labels1_218
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem localLabels1_218_eq : LabToTarget.sectionLabels 133392 Reencode0_218.lines [] = (133460, localLabels1_218) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.localLabels1_218_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
