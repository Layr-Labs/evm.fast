import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_309
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_309
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_309_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 262268 riscvConfig.encode Reencode0_309.lines [] true = (Reencode1_309.lines, 262468, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_309_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
