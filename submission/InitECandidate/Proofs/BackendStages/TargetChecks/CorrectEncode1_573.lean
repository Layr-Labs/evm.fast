import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_573
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_573
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_573_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 473392 riscvConfig.encode Reencode0_573.lines [] true = (Reencode1_573.lines, 473936, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_573_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
