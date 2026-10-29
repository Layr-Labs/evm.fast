import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_156
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_156
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_156_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 88632 riscvConfig.encode Initial156.lines [] true = (Reencode0_156.lines, 90528, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_156_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
