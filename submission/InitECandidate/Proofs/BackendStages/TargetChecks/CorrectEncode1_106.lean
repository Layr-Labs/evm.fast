import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_106
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_106
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_106_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 12776 riscvConfig.encode Reencode0_106.lines [] true = (Reencode1_106.lines, 12908, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_106_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
