import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_6
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_6
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_6_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 908 riscvConfig.encode Initial6.lines [] true = (Reencode0_6.lines, 1112, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_6_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
