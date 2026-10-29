import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_181
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_181
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_181_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 103864 riscvConfig.encode Initial181.lines [] true = (Reencode0_181.lines, 104068, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_181_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
