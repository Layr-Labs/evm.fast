import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_82
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_82
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_82_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 9260 riscvConfig.encode Reencode0_82.lines [] true = (Reencode1_82.lines, 9388, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_82_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
