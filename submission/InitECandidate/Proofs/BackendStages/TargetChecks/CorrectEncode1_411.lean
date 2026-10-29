import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_411
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_411
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_411_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 338328 riscvConfig.encode Reencode0_411.lines [] true = (Reencode1_411.lines, 339080, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_411_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
