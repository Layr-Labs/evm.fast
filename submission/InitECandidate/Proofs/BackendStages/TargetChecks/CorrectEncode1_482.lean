import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_482
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_482
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_482_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 397140 riscvConfig.encode Reencode0_482.lines [] true = (Reencode1_482.lines, 397888, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_482_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
