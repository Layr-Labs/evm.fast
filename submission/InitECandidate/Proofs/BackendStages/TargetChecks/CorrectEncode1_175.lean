import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_175
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_175
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_175_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 102516 riscvConfig.encode Reencode0_175.lines [] true = (Reencode1_175.lines, 102720, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_175_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
