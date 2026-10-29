import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_522
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_522
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_522_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 425620 riscvConfig.encode Reencode0_522.lines [] true = (Reencode1_522.lines, 426328, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_522_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
