import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_104
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_104_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 12480 riscvConfig.encode Reencode0_104.lines [] true = (Reencode1_104.lines, 12712, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_104_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
