import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_402
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_402
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_402_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 333320 riscvConfig.encode Initial402.lines [] true = (Reencode0_402.lines, 333740, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_402_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
