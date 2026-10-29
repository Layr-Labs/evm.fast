import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_218
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_218
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_218_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 133392 riscvConfig.encode Reencode0_218.lines [] true = (Reencode1_218.lines, 133460, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_218_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
