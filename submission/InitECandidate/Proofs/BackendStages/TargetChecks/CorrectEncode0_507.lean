import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_507
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_507
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_507_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 412448 riscvConfig.encode Initial507.lines [] true = (Reencode0_507.lines, 413492, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_507_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
