import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_329
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_329
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_329_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 280844 riscvConfig.encode Initial329.lines [] true = (Reencode0_329.lines, 281716, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_329_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
