import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_332
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_332
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_332_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 282728 riscvConfig.encode Reencode0_332.lines [] true = (Reencode1_332.lines, 283804, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_332_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
