import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_538
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_538
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_538_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 439896 riscvConfig.encode Initial538.lines [] true = (Reencode0_538.lines, 440028, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_538_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
