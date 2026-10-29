import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_559
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_559
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_559_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 460176 riscvConfig.encode Reencode0_559.lines [] true = (Reencode1_559.lines, 460608, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_559_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
