import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_595
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_595
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_595_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 504220 riscvConfig.encode Initial595.lines [] true = (Reencode0_595.lines, 518448, false) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_595_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
