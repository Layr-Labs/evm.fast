import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_247
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_247
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_247_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 191364 riscvConfig.encode Reencode0_247.lines [] true = (Reencode1_247.lines, 192000, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_247_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
