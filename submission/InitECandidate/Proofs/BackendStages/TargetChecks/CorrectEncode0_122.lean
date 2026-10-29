import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_122
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_122
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_122_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 20304 riscvConfig.encode Initial122.lines [] true = (Reencode0_122.lines, 20600, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_122_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
