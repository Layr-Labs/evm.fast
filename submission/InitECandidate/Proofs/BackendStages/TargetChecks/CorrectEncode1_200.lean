import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_200
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_200
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_200_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 113828 riscvConfig.encode Reencode0_200.lines [] true = (Reencode1_200.lines, 115192, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_200_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
