import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_556
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_556
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_556_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 457720 riscvConfig.encode Initial556.lines [] true = (Reencode0_556.lines, 458276, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_556_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
