import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_95
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_95
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_95_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 11624 riscvConfig.encode Reencode0_95.lines [] true = (Reencode1_95.lines, 11796, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_95_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
