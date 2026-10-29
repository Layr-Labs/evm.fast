import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_277
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_277
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_277_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 234928 riscvConfig.encode Reencode0_277.lines [] true = (Reencode1_277.lines, 235500, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_277_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
