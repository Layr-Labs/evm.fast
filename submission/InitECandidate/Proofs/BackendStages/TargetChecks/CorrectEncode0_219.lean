import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_219
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_219
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_219_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 133460 riscvConfig.encode Initial219.lines [] true = (Reencode0_219.lines, 133528, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_219_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
