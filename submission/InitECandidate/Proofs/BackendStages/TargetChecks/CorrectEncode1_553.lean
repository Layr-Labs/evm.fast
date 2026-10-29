import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_553
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_553
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_553_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 455532 riscvConfig.encode Reencode0_553.lines [] true = (Reencode1_553.lines, 456088, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_553_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
