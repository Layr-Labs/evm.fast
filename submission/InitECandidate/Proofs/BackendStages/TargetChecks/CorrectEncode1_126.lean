import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_126
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_126
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_126_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 21008 riscvConfig.encode Reencode0_126.lines [] true = (Reencode1_126.lines, 21096, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_126_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
