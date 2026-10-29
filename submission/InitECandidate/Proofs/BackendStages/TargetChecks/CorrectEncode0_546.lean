import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_546
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_546
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_546_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 443176 riscvConfig.encode Initial546.lines [] true = (Reencode0_546.lines, 447052, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_546_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
