import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_444
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_444
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_444_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 358612 riscvConfig.encode Reencode0_444.lines [] true = (Reencode1_444.lines, 359152, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_444_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
