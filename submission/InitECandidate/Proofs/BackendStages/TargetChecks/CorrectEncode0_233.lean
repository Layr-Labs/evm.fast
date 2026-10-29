import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_233
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_233
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_233_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 171464 riscvConfig.encode Initial233.lines [] true = (Reencode0_233.lines, 172424, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_233_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
