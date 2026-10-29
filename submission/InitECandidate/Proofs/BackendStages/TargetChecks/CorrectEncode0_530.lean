import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_530
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_530
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_530_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 431644 riscvConfig.encode Initial530.lines [] true = (Reencode0_530.lines, 432664, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_530_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
