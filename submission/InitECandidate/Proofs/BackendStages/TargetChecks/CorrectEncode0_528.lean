import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_528
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode0_528
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode0_528_eq : LabToTarget.encLinesAgain Target.labels0 Target.ffis 430924 riscvConfig.encode Initial528.lines [] true = (Reencode0_528.lines, 431352, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode0_528_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
