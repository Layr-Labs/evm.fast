import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_436
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_436
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_436_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 353860 riscvConfig.encode Initial436.lines [] true = (Reencode0_436.lines, 354244, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_436_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
