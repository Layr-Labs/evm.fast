import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_239
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_239
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_239_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 187196 riscvConfig.encode Initial239.lines [] true = (Reencode0_239.lines, 187808, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_239_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
