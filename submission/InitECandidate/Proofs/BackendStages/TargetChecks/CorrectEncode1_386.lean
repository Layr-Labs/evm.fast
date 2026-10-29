import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_386
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_386
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_386_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 322452 riscvConfig.encode Reencode0_386.lines [] true = (Reencode1_386.lines, 324604, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_386_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
