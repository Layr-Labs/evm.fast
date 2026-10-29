import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_512
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_512
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_512_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 416980 riscvConfig.encode Reencode0_512.lines [] true = (Reencode1_512.lines, 417852, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_512_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
