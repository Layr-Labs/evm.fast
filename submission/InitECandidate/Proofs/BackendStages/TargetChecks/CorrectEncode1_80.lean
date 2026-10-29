import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_80
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_80
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_80_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 9112 riscvConfig.encode Reencode0_80.lines [] true = (Reencode1_80.lines, 9196, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_80_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
