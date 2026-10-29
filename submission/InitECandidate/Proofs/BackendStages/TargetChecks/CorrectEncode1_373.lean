import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_373
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_373
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_373_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 312788 riscvConfig.encode Reencode0_373.lines [] true = (Reencode1_373.lines, 312812, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_373_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
