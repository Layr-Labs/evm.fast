import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_424
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_424
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_424_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 345056 riscvConfig.encode Initial424.lines [] true = (Reencode0_424.lines, 345648, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_424_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
