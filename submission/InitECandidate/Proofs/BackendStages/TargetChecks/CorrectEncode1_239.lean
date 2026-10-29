import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_239
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_239
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_239_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 187196 riscvConfig.encode Reencode0_239.lines [] true = (Reencode1_239.lines, 187808, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_239_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
