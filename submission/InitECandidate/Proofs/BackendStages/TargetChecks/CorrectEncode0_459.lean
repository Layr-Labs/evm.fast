import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_459
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_459
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_459_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 374040 riscvConfig.encode Initial459.lines [] true = (Reencode0_459.lines, 386588, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_459_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
