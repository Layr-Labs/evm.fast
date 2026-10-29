import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_204
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_204
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_204_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 116304 riscvConfig.encode Reencode0_204.lines [] true = (Reencode1_204.lines, 116592, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_204_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
