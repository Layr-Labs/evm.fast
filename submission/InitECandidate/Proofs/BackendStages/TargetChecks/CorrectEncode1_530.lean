import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_530
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_530_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 431644 riscvConfig.encode Reencode0_530.lines [] true = (Reencode1_530.lines, 432664, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_530_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
