import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_448
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_448
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_448_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 360188 riscvConfig.encode Reencode0_448.lines [] true = (Reencode1_448.lines, 360720, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_448_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
