import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_260
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_260
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_260_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 213296 riscvConfig.encode Initial260.lines [] true = (Reencode0_260.lines, 214612, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_260_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
