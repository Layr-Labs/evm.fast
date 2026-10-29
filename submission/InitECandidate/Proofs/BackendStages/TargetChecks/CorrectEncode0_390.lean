import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_390
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_390
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_390_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 327840 riscvConfig.encode Initial390.lines [] true = (Reencode0_390.lines, 327868, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_390_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
