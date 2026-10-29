import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_412
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_412
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_412_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 339080 riscvConfig.encode Reencode0_412.lines [] true = (Reencode1_412.lines, 339444, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_412_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
