import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_524
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_524
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_524_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 428732 riscvConfig.encode Initial524.lines [] true = (Reencode0_524.lines, 428932, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_524_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
