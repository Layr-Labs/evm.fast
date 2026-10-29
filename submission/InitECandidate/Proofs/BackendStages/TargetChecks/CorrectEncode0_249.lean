import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_249
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_249
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_249_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 195052 riscvConfig.encode Initial249.lines [] true = (Reencode0_249.lines, 195356, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_249_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
