import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_535
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_535
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_535_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 437640 riscvConfig.encode Reencode0_535.lines [] true = (Reencode1_535.lines, 438048, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_535_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
