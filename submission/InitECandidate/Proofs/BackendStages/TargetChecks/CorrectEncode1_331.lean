import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_331
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_331
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_331_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 282236 riscvConfig.encode Reencode0_331.lines [] true = (Reencode1_331.lines, 282728, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_331_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
