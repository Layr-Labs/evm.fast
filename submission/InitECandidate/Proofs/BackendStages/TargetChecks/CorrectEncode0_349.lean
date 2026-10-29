import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_349
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_349
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_349_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 300684 riscvConfig.encode Initial349.lines [] true = (Reencode0_349.lines, 300700, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_349_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
