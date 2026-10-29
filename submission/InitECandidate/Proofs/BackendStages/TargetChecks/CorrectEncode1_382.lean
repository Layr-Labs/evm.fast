import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_382
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_382
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_382_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 319824 riscvConfig.encode Reencode0_382.lines [] true = (Reencode1_382.lines, 320600, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_382_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
