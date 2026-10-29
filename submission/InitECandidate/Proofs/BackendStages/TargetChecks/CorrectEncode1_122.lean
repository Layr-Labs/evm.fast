import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_122
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_122
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_122_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 20304 riscvConfig.encode Reencode0_122.lines [] true = (Reencode1_122.lines, 20600, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_122_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
