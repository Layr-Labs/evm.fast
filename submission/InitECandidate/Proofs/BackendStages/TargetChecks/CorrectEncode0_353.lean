import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_353
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_353
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_353_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 300788 riscvConfig.encode Initial353.lines [] true = (Reencode0_353.lines, 300820, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_353_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
