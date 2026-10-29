import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_169
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_169
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_169_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 100376 riscvConfig.encode Reencode0_169.lines [] true = (Reencode1_169.lines, 101004, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_169_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
