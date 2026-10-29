import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_481
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_481
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_481_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 396576 riscvConfig.encode Reencode0_481.lines [] true = (Reencode1_481.lines, 397140, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_481_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
