import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_489
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_489
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_489_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 400500 riscvConfig.encode Initial489.lines [] true = (Reencode0_489.lines, 402328, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_489_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
