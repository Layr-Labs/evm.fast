import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_439
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_439
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_439_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 355400 riscvConfig.encode Reencode0_439.lines [] true = (Reencode1_439.lines, 356644, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_439_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
