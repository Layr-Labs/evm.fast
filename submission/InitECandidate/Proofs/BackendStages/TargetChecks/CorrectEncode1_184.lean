import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_184
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_184
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_184_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 105676 riscvConfig.encode Reencode0_184.lines [] true = (Reencode1_184.lines, 105864, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_184_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
