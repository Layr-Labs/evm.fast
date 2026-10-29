import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_491
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_491
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_491_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 402372 riscvConfig.encode Reencode0_491.lines [] true = (Reencode1_491.lines, 402404, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_491_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
