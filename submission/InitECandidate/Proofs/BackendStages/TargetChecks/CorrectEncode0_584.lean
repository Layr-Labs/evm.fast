import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_584
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_584
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_584_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 481192 riscvConfig.encode Initial584.lines [] true = (Reencode0_584.lines, 483432, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_584_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
