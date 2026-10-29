import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_110
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_110
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_110_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 13160 riscvConfig.encode Initial110.lines [] true = (Reencode0_110.lines, 13612, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_110_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
