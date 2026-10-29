import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_104
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_104
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_104_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 12480 riscvConfig.encode Initial104.lines [] true = (Reencode0_104.lines, 12712, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_104_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
