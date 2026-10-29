import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_177
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_177
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_177_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 103144 riscvConfig.encode Initial177.lines [] true = (Reencode0_177.lines, 103560, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_177_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
