import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_94
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_94
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_94_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 11272 riscvConfig.encode Reencode0_94.lines [] true = (Reencode1_94.lines, 11624, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_94_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
