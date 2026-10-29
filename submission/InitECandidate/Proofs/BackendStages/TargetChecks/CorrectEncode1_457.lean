import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_457
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_457
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_457_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 370224 riscvConfig.encode Reencode0_457.lines [] true = (Reencode1_457.lines, 373704, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_457_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
