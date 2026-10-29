import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_183
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_183
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_183_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 104872 riscvConfig.encode Initial183.lines [] true = (Reencode0_183.lines, 105676, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_183_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
