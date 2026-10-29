import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_437
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_437
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_437_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 354244 riscvConfig.encode Reencode0_437.lines [] true = (Reencode1_437.lines, 354748, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_437_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
