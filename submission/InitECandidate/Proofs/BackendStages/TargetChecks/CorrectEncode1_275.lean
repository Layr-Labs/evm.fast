import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_275
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_275
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_275_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 230004 riscvConfig.encode Reencode0_275.lines [] true = (Reencode1_275.lines, 230812, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_275_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
