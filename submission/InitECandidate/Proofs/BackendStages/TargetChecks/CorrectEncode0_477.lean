import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_477
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_477
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_477_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 394112 riscvConfig.encode Initial477.lines [] true = (Reencode0_477.lines, 394292, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_477_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
