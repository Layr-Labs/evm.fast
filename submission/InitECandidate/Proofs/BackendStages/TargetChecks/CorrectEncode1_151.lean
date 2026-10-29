import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_151
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_151
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_151_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 37412 riscvConfig.encode Reencode0_151.lines [] true = (Reencode1_151.lines, 55752, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_151_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
