import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_186
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_186
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_186_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 106028 riscvConfig.encode Reencode0_186.lines [] true = (Reencode1_186.lines, 106484, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_186_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
