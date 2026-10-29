import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_422
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_422
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_422_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 344276 riscvConfig.encode Reencode0_422.lines [] true = (Reencode1_422.lines, 344580, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_422_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
