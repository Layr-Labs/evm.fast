import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_316
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_316
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_316_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 269132 riscvConfig.encode Reencode0_316.lines [] true = (Reencode1_316.lines, 270176, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_316_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
