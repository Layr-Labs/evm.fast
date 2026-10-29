import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData1_291
import InitECandidate.Proofs.BackendStages.TargetChecks.Encode1_291
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
theorem Reencode1_291_eq : LabToTarget.encLinesAgain Target.labels1 Target.ffis 249496 riscvConfig.encode Reencode0_291.lines [] true = (Reencode1_291.lines, 249796, true) := by
  exact InitECandidate.Proofs.BackendStages.TargetChecks.Reencode1_291_eq
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
