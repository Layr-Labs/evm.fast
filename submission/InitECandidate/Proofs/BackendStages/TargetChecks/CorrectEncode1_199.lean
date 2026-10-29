import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_199
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_199
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_199_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 112464 riscvConfig.encode Reencode0_199.lines [] true = (Reencode1_199.lines, 113828, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_199_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
