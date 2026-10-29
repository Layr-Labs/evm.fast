import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_160
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_160
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_160_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 92244 riscvConfig.encode Initial160.lines [] true = (Reencode0_160.lines, 92572, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_160_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
