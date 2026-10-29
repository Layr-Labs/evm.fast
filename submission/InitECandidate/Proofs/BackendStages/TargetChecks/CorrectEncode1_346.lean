import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_346
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_346
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_346_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 300436 riscvConfig.encode Reencode0_346.lines [] true = (Reencode1_346.lines, 300636, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_346_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
