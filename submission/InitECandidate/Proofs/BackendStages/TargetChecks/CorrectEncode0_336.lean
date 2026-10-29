import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_336
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_336
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_336_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 289060 riscvConfig.encode Initial336.lines [] true = (Reencode0_336.lines, 289276, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_336_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
