import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_516
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_516
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_516_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 420076 riscvConfig.encode Initial516.lines [] true = (Reencode0_516.lines, 420836, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_516_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
