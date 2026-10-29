import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_2
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_2
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_2_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 796 riscvConfig.encode Initial2.lines [] true = (Reencode0_2.lines, 812, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_2_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
