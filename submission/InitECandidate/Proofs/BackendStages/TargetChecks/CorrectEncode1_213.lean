import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_213
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_213
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_213_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 132008 riscvConfig.encode Reencode0_213.lines [] true = (Reencode1_213.lines, 132056, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_213_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
