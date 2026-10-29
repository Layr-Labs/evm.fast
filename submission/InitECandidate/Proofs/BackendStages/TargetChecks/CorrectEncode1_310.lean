import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_310
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_310
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_310_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 262468 riscvConfig.encode Reencode0_310.lines [] true = (Reencode1_310.lines, 263272, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_310_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
