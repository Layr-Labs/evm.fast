import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_206
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_206
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_206_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 116908 riscvConfig.encode Reencode0_206.lines [] true = (Reencode1_206.lines, 122384, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_206_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
