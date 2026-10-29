import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_71
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_71
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_71_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 6084 riscvConfig.encode Initial71.lines [] true = (Reencode0_71.lines, 6540, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_71_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
