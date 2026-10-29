import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_508
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_508
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_508_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 413492 riscvConfig.encode Reencode0_508.lines [] true = (Reencode1_508.lines, 414364, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_508_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
