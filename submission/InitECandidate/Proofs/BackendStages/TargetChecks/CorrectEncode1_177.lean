import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_177
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_177_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 103144 riscvConfig.encode Reencode0_177.lines [] true = (Reencode1_177.lines, 103560, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_177_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
