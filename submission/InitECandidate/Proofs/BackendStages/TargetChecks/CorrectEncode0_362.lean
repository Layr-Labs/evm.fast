import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_362
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_362
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_362_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 304220 riscvConfig.encode Initial362.lines [] true = (Reencode0_362.lines, 304728, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_362_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
