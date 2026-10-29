import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_369
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_369
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_369_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 311944 riscvConfig.encode Reencode0_369.lines [] true = (Reencode1_369.lines, 312128, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_369_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
