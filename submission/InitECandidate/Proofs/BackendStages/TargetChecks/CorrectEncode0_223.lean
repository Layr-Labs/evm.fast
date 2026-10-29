import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_223
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_223
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_223_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 133768 riscvConfig.encode Initial223.lines [] true = (Reencode0_223.lines, 138260, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_223_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
