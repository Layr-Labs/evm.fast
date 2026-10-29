import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_451
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_451
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_451_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 364296 riscvConfig.encode Reencode0_451.lines [] true = (Reencode1_451.lines, 364756, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_451_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
