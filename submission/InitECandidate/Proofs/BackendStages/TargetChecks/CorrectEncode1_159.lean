import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_159
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_159
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_159_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 92224 riscvConfig.encode Reencode0_159.lines [] true = (Reencode1_159.lines, 92244, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_159_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
