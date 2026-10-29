import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_510
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_510
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_510_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 415236 riscvConfig.encode Initial510.lines [] true = (Reencode0_510.lines, 416108, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_510_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
