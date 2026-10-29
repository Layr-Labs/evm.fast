import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_571
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_571
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_571_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 472788 riscvConfig.encode Reencode0_571.lines [] true = (Reencode1_571.lines, 473356, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_571_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
