import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_67
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_67
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_67_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 5432 riscvConfig.encode Reencode0_67.lines [] true = (Reencode1_67.lines, 5536, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_67_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
