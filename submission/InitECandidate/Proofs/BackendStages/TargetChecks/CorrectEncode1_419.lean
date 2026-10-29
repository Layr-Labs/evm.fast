import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_419
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_419
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_419_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 342032 riscvConfig.encode Reencode0_419.lines [] true = (Reencode1_419.lines, 342228, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_419_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
