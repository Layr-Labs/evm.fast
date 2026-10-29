import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_293
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_293
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_293_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 250300 riscvConfig.encode Reencode0_293.lines [] true = (Reencode1_293.lines, 251028, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_293_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
