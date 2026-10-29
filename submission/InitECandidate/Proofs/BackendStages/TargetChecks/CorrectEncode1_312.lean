import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_312
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_312
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_312_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 263928 riscvConfig.encode Reencode0_312.lines [] true = (Reencode1_312.lines, 264712, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_312_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
