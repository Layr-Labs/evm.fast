import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_179
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_179
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_179_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 103580 riscvConfig.encode Reencode0_179.lines [] true = (Reencode1_179.lines, 103852, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_179_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
