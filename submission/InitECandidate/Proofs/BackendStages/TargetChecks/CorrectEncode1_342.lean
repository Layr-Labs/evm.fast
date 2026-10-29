import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_342
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_342
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_342_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 290536 riscvConfig.encode Reencode0_342.lines [] true = (Reencode1_342.lines, 292688, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_342_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
