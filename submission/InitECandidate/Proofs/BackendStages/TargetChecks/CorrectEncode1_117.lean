import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_117
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_117
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_117_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 13960 riscvConfig.encode Reencode0_117.lines [] true = (Reencode1_117.lines, 14092, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_117_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
