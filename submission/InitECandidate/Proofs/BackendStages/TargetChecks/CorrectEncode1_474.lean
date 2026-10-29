import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_474
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_474
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_474_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 393276 riscvConfig.encode Reencode0_474.lines [] true = (Reencode1_474.lines, 393364, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_474_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
